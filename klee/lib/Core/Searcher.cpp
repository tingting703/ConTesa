//===-- Searcher.cpp ------------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "Common.h"

#include "Searcher.h"

#include "CoreStats.h"
#include "Executor.h"
#include "PTree.h"
#include "StatsTracker.h"

#include "klee/ExecutionState.h"
#include "klee/Statistics.h"
#include "klee/Internal/Module/InstructionInfoTable.h"
#include "klee/Internal/Module/KInstruction.h"
#include "klee/Internal/Module/KModule.h"
#include "klee/Internal/ADT/DiscretePDF.h"
#include "klee/Internal/ADT/RNG.h"
#include "klee/Internal/Support/ModuleUtil.h"
#include "klee/Internal/System/Time.h"

#include "llvm/Constants.h"
#include "llvm/Instructions.h"
#include "llvm/Module.h"
#include "llvm/Support/CallSite.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/CommandLine.h"

//** TY: added for BugRedux
#include "llvm/PassManager.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/DebugInfo.h"
#include "llvm/Analysis/CallGraph.h"
#include "klee/ClapUtil.h" //CLAP
#include "FindCallGraph.h" //symbiosis

#include <cassert>
#include <fstream>
#include <sstream>
#include <climits>
#include <stack>

#include <iostream>
#include <string>
#include <sstream>

using namespace std;
using namespace klee;
using namespace llvm;

namespace {
cl::opt<bool> DebugLogMerge("debug-log-merge");
}

cl::opt<bool> WithPOSIXRuntime("posix-runtime",
		cl::desc(
				"Link with POSIX runtime.  Options that can be passed as arguments to the programs are: --sym-argv <max-len>  --sym-argvs <min-argvs> <max-argvs> <max-len> + file model options"),
		cl::init(false));

namespace klee {
extern RNG theRNG;
}

string printDebug(Instruction *inst) {
	std::string output = "";
	if (MDNode *N = inst->getMetadata("dbg")) {
		if (N != NULL) {
			DILocation Loc(N);
			std::string dir = Loc.getDirectory();
			std::string file = Loc.getFilename();
			unsigned int line = Loc.getLineNumber();
			/*  if(file.compare("klee_init_env.c") == 0){
			 std::cerr << dir << "\t" << file << "\t" << line <<"####\n";
			 }*/
			stringstream ss;
			ss << dir << "\t" << file << "\t" << line << "####\n";
			output = ss.str();
			std::cerr << dir << "\t" << file << "\t" << line << "####\n";
		}
	}
	return output;
}

Searcher::~Searcher() {
}

//** TY: added from bugredux { #######################

//** GeneralReplayerSearcher ****************************************
KInstruction* GeneralReplaySearcher::findInstFromSourceLine(
		std::string sourceline) {
	KInstruction* retInst = NULL;

	for (unsigned i = 0; i < functions.size(); i++) {
		KFunction* kf = functions[i];
		int numInst = kf->numInstructions;

		for (int j = 0; j < numInst; j++) {
			KInstruction* ki = kf->instructions[j];

			std::string filename = (ki->info->file);
			char * filename_c = new char[filename.size() + 1];
			std::copy(filename.begin(), filename.end(), filename_c);
			filename_c[filename.size()] = '\0'; // don't forget the terminating 0

			std::ostringstream osstream;
			osstream << extractFileBasename(filename_c) << ":"
					<< ki->info->line;
			//std::cerr << "\t" << osstream.str() << " ? ";

			if (osstream.str().compare(sourceline) == 0) {
				//std::cerr << "\t" << osstream.str() << " ? ";
				return ki;
			}
		}
	}
	return retInst;
}

GeneralReplaySearcher::GeneralReplaySearcher(Executor &_executor) :
		executor(_executor), functions(executor.kmodule->functions) {

	for (unsigned i = 0; i < functions.size(); i++) {
		KFunction * kf = functions[i];
		if (kf->function != NULL) {
			funcShortMap[kf->function] = 1;
		}
		llvm::Function* curFunc = kf->function;
		if (curFunc->getBasicBlockList().size() == 0)
			continue;
	}

}

GeneralReplaySearcher::~GeneralReplaySearcher() {
}

ExecutionState &GeneralReplaySearcher::selectState() {
	return *states.back();
}

void GeneralReplaySearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	states.insert(states.end(), addedStates.begin(), addedStates.end());
	for (std::set<ExecutionState*>::const_iterator it = removedStates.begin(),
			ie = removedStates.end(); it != ie; ++it) {
		ExecutionState *es = *it;
		if (es == states.back()) {
			states.pop_back();
		} else {
			bool ok = false;

			for (std::vector<ExecutionState*>::iterator ait = states.begin(),
					aie = states.end(); ait != aie; ++ait) {
				if (es == *ait) {
					states.erase(ait);
					ok = true;
					break;
				}
			}

			assert(ok && "invalid state removed");
		}
	}
}

//** TyuReplaySearcher *********************************************
TyuReplaySearcher::TyuReplaySearcher(Executor &_executor) :
		GeneralReplaySearcher(_executor) {

	//** TY: load tyu events
	//load target goals
	for (unsigned i=0;i<functions.size();i++) {
		KFunction * kf = functions[i];
		if(kf->instructions[0]->info->file.find("shell.c") != std::string::npos
				|| kf->instructions[0]->info->file.find("histfile.c") != std::string::npos
				//||kf->instructions[0]->info->file.find("remove.c") != std::string::npos
				)
			//std::cerr<< "this function is: "<<kf->function->getNameStr()<< "\t" << kf->instructions[0]->info->file <<"\n";
			foi.push_back(kf->function->getNameStr());
	}

	if (atrace.empty()) {
		atrace = loadTyuTrace();
		printTyuTrace();

		//** initalize map threadHasFinished
		for (TyuTrace::iterator iter = atrace.begin(); iter != atrace.end();
				++iter) {
			std::string tid = (*iter).first;
			threadHasFinished[tid] = false;
			//std::cerr << "*** threadHasFinished["<<tid<<"] = "<< threadHasFinished[tid]<< "\n";
		}
		//**
	}

	eventPtr = 0;
	getTarget = false;

	if (!atrace.empty()) {
		//** Here we build the targetInstList, which contains an ordered sequence of events
		//** that should be reached during the symbolic execution

		std::map<std::string, KInstruction*> foundset; //cache for the events whose instruction was already found
		std::map<std::string, KInstruction*> unfoundset; //cache for the events whose instruction couldn't be found

		//TyuEventVector vec = atrace[getThreadName()];
		std::string name = "0";
		TyuEventVector vec = atrace[name];

		std::cerr << "############ THREAD " << "\n";

		for (TyuEventVector::iterator vecit = vec.begin(); vecit != vec.end();
				++vecit) {
			TyuEvent ae = *vecit;
			std::ostringstream osstream;
			osstream << ae.filename << ":" << ae.loc;

			if (foundset.find(osstream.str()) != foundset.end()) //we've already seen this event before
					{
				std::cerr << "event " << osstream.str()
						<< " already on cache\n";
				targetInstList.push_back(foundset[osstream.str()]);
				continue;
			} else if (unfoundset.find(osstream.str()) != unfoundset.end()) {
				std::cerr << "event " << osstream.str()
						<< " not found, already on cache\n";
				continue;
			} else {
				std::cerr << "event " << osstream.str() << " == ";
				KInstruction* inst = this->findInstFromSourceLine(
						osstream.str());
				if (inst != NULL) {
					foundset[osstream.str()] = inst;
					targetInstList.push_back(inst);
					visitedFuncs.insert(inst->inst->getParent()->getParent());
				} else {
					std::cerr << "[" << getThreadName()
							<< "] Cannot find target " << osstream.str()
							<< "\n";
					unfoundset[osstream.str()] = NULL;
				}

			}
		}
	}

	lastChoiceNumber = -1;
	lastChoice = NULL;
	this->getToUserMain = false;
	this->random = false;
}

//** complete the tyu trace with events referring to the function call seq
/*void TyuReplaySearcher::expandTraceFile()
 {
 //** run pass to find the callers for each function
 llvm::PassManager pmcfg;
 FindCallGraph* fcg = new FindCallGraph();
 PassRegistry &Registry = *PassRegistry::getPassRegistry();
 initializeIPA(Registry);
 pmcfg.add((llvm::Pass*)fcg);
 //  pmcfg.run(*executor.kmodule->module);

 std::vector<ExecutionState*>::iterator it = states.begin();
 ExecutionState *es = *it;
 Function* mainFunc = es->pc->inst->getParent()->getParent(); //thread's main function, i.e., the first function that it executes

 //** iterate over all events and add extra events for each function in the call seq
 for(std::vector<KInstruction*>::iterator it = targetInstList.begin(); it != targetInstList.end(); it++)
 {
 Function* eventfunc = (*it)->inst->getParent()->getParent(); //** function where the event is
 std::stack<Function*> stack;

 //** DFS to find path from eventFunc to mainFunc
 std::vector<Function*> path; //to store path from mainFunc to eventFunc
 stack.push(eventfunc);
 while(!stack.empty())
 {
 Function* tmpFunc = stack.top();
 stack.pop();
 if(tmpFunc == mainFunc)
 {
 path.insert(path.begin(),tmpFunc);
 break;
 }
 else if(visitedFuncs.find(tmpFunc)!=visitedFuncs.end())
 {
 path.insert(path.begin(),tmpFunc);
 for(std::set<llvm::Function *>::iterator itc = fcg->callersOf[tmpFunc].begin(); itc!=fcg->callersOf[tmpFunc].end(); ++itc)
 {
 stack.push((*itc));
 }
 }
 }

 std::cerr << "### callseq for event " << (*it)->info->line << ": ";
 for(std::vector<Function*>::iterator pit = path.begin(); pit!=path.end(); ++pit)
 {
 std::cerr << (*pit)->getNameStr() << " -> ";
 }
 std::cerr << "\n";
 }



 /*  for(std::map< llvm::Function *, std::set<llvm::Function *> >::iterator it = fcg->callersOf.begin(); it!=fcg->callersOf.end(); ++it)
 {
 llvm::Function* func = it->first;
 if(visitedFuncs.find(func)!=visitedFuncs.end())
 {
 std::set<llvm::Function *> setCallers = it->second;
 std::cerr << func->getNameStr() << " : ";
 for(std::set<llvm::Function *>::iterator itc = setCallers.begin(); itc!=setCallers.end(); ++itc)
 {
 llvm::Function* func = (*itc);
 std::cerr << func->getNameStr() << "; ";
 }
 std::cerr << "\n";
 }
 }//*/
//CALLGRAPH ----------------
//}
//** TY
//** returns the basic block id, corresponding to the parameter of the function instrumented in the beginning of the basic block
int getBasicBlockId(BasicBlock* BB) {
	int id = -1;

	Value* bbidval = BB->begin()->getOperand(0);
	ConstantInt* CI = dyn_cast < ConstantInt > (bbidval);
	id = (CI == NULL) ? -1 : CI->getZExtValue();

	return id;
}

//** computes path distance between a source BB and a destination BB (each BB in the path counts as 1 unit)
int computePathDist(BasicBlock* bbDest,
		std::map<BasicBlock*, std::stack<BasicBlock*> > prev) {
	int ret = 1;
	BasicBlock* prevBB = prev[bbDest].top();
	prev[bbDest].pop();

	//** debug ----
	//string DprevBB = printDebug(prevBB->getTerminator());
	//std::cerr << "previous BB is " << prevBB->getNameStr() << ":\t";
	//printDebug(prevBB->getTerminator());

	//string DbbDest = printDebug(bbDest->getTerminator());
	//std::cerr << "start computing path from " << bbDest->getNameStr() << ":"
	//<< DbbDest << "\n";
	for (std::map<BasicBlock*, std::stack<BasicBlock*> >::iterator it =
			prev.begin(); it != prev.end(); it++) {
		//std::cerr << "prev[" << it->first->getParent()->getNameStr()<< ":" << it->first->getNameStr() << "] -> {";
		std::stack<BasicBlock*> st = it->second;
		while (!st.empty()) {
			if (st.top() != NULL) {
				//string Dtop = printDebug(st.top()->getTerminator());
				//std::cerr << st.top()->getNameStr() << ":\t";
				//printDebug(st.top()->getTerminator());
				//std::cerr << ", ";
			} else {
				//std::cerr << st.top() << " empty, ";
			}
			st.pop();
		}
		//std::cerr << "}\n";
	}
	//** debug ----

	while (prevBB != NULL && !prev[prevBB].empty()) {
		ret++;
		BasicBlock* tempPrev = prevBB;
		prevBB = prev[prevBB].top();

		//** debug ----
		/*if (prevBB != NULL) {
			std::cerr << "prevBB = " <<prevBB->getParent()->getNameStr() << ":"<<prevBB->getNameStr() << ":\t";
			printDebug(prevBB->getTerminator());
			std::cerr << " (ret = " << ret << ")\n";
		} else {
			std::cerr << "prevBB = " << prevBB << ": empty" << " (ret = " << ret
					<< ")\n";
		}*/
		//** debug ----
		if(!prev[tempPrev].empty())
			prev[tempPrev].pop();
	}
	return ret;
}

//** TY: indicates whether a given destination instruction is reachable forward in the CFG from a given source instruction
int isReachableForward(KInstruction* src, KInstruction* dest) {
	int ret = -1;
	BasicBlock* bbSrc = src->inst->getParent();
	BasicBlock* bbDest = dest->inst->getParent();
	std::map<BasicBlock*, std::stack<BasicBlock*> > prev; //** map to store the paths explored in the dfs

	//** both instructions are in the same BB and destination instruction occurs after source instruction

	/* std::cerr << "bbSrc: "<< bbSrc << " | bbDest: "<< bbDest << "\n";
	 std::cerr << "bbSrc: ";
	 printDebug(src->inst);
	 std::cerr << "\nbbDest: ";
	 printDebug(dest->inst);*/

	if (bbSrc == bbDest && src->info->line <= dest->info->line) {
		return 0;
	}

	//** instructions in different basic blocks, perform first a local dfs (i.e. in the same function)
	std::set<BasicBlock*> visitedBB;
	std::queue<BasicBlock*> stackBB;
	stackBB.push(bbSrc);

	//** source entry has no previous BBs in the path
	std::stack<BasicBlock*> st;
	st.push(NULL);
	prev[bbSrc] = st;

	if (bbSrc->getParent()->getNameStr().compare(bbDest->getParent()->getNameStr())
			== 0) {
		//std::cerr << "---perform dfs in the same function---\n";
		while (!stackBB.empty()) {
			BasicBlock* tmpBB = stackBB.front();
			stackBB.pop();
			/*std::cerr << "tmpBB: " << tmpBB->getNameStr() << " | bbDest: "
					<< bbDest->getNameStr() << "\n";*/
			/*std::cerr << "tmpBB: ";
			printDebug(tmpBB->getTerminator());
			std::cerr << "bbDest: ";
			printDebug(bbDest->getTerminator());*/

			if (tmpBB == bbDest) {
				return computePathDist(bbDest, prev);
			} else if (visitedBB.find(tmpBB) == visitedBB.end()) {
				//std::cerr << "not in visitedBB\n";
				visitedBB.insert(tmpBB);
				for (succ_iterator SI = succ_begin(tmpBB), E = succ_end(tmpBB);
						SI != E; ++SI) {
					// std::cerr << "push stack1: "<< tmpBB << " -> "<< (*SI) << "\n";

					/*std::cerr << "push successor: " << (*SI)->getNameStr()
							<< " ->";
					printDebug((*SI)->getTerminator());
					std::cerr << "\n";*/

					stackBB.push((*SI));
					//** check if the entry is empty or not
					if (prev.find(*SI) == prev.end()) {
						std::stack<BasicBlock*> s;
						s.push(tmpBB);
						prev[(*SI)] = s;
					} else {
						prev[(*SI)].push(tmpBB);
					}

					/*if(*SI == bbDest){
						return computePathDist(bbDest, prev);
					}*/
				}
			}
		}
	} else {
		//std::cerr << "\n+++inter-procedural dfs+++\n";
		//** instructions are in different functions, perform inter-procedural dfs
		visitedBB.clear();
		stackBB.push(bbSrc);
		while (!stackBB.empty()) {
			BasicBlock* tmpBB = stackBB.front();
			stackBB.pop();

			/*std::cerr << "@@@ tmpBB: " << tmpBB->getNameStr() << " | bbDest: "
					<< bbDest->getNameStr() << "@@@\n";
			std::cerr << "tmpBB: ";
			printDebug(tmpBB->getTerminator());
			std::cerr << "bbDest: ";
			printDebug(bbDest->getTerminator());*/

			if (tmpBB == bbDest) {
				return computePathDist(bbDest, prev);
			} else if (visitedBB.find(tmpBB) == visitedBB.end()) {
				//std::cerr << "not in visitedBB\n";
				visitedBB.insert(tmpBB);

				/*could be here*/


				/*could be here*/

				//** find function calls
				for (BasicBlock::iterator ii = tmpBB->begin(), ii_end =
						tmpBB->end(); ii != ii_end; ++ii) {
					Instruction* tmpInst = ii;
					if (isa < CallInst > (tmpInst)) {
						//** add called function's basic blocks to the stack
						Function* calledFunc =
								((CallInst*) tmpInst)->getCalledFunction();
						if (calledFunc != NULL
								&& calledFunc->getNameStr().find("klee")
										== std::string::npos
								&& calledFunc->getNameStr().find("pthread")
										== std::string::npos) {
							//** only add BBs if size > 0
							if (calledFunc->getBasicBlockList().size() > 0) {
								//std::cerr << "Add first BB from " << calledFunc->getNameStr()<< "\n";
								//printDebug(tmpInst);
								//** put only the first BB of the fuction
								BasicBlock* ib = calledFunc->begin();
							   // std::cerr << "push stack2: "<< tmpBB->getNameStr() << " -> "<< ib->getNameStr() << " ("<< calledFunc->getNameStr() <<")\n";
								//printDebug(ib->getTerminator());
								stackBB.push(ib);

								if (prev.find(ib) == prev.end()) {
									std::stack<BasicBlock*> s;
									s.push(tmpBB);
									prev[ib] = s;
								} else {
									prev[ib].push(tmpBB);
								}
							}

						}
					}
				}

				//std::cerr << "\n+++add successor blocks to stack+++";
				for (succ_iterator SI = succ_begin(tmpBB), E = succ_end(tmpBB);
						SI != E; ++SI) {
					/*std::cerr << "push stack3: "<< tmpBB->getNameStr() << " -> "<< (*SI)->getNameStr() << "\n";
					 std::cerr << "tmpBB: ";
					 printDebug(tmpBB->getTerminator());
					 std::cerr << "successor: ";
					 printDebug((*SI)->getTerminator());*/

					stackBB.push((*SI));

					if (prev.find(*SI) == prev.end()) {
						std::stack<BasicBlock*> s;
						s.push(tmpBB);
						prev[(*SI)] = s;
					} else {
						prev[(*SI)].push(tmpBB);
					}
				}

			}
		}
	}
	return ret;
}

//** TY: indicates whether a given destination instruction is reachable in the CFG from a given source instruction
int isReachable(ExecutionState* es, KInstruction* src, KInstruction* dest) {
	int ret = -1;

	//** start with DFS forward in the CFG
	ret = isReachableForward(src, dest);

	//  std::cerr << "return rrrr: " << ret << "\n";
	//** if we found the event in the forward search, then we can return
	if (ret >= 0) {
		return ret;
	}

//	std::cerr <<src->inst->getParent()->getNameStr()<< "!!!!" <<dest->inst->getParent()->getNameStr()<<"\n";
	if (src->inst->getParent()->getParent()->getNameStr().compare(dest->inst->getParent()->getParent()->getNameStr())
				== 0){

		return ret;
	}
	//** if the destination event had't been found so far, it may be the case that the function we are in
	//** is being called within a loop in a given caller function, so we have to start searching from the
	//** functions in the stack
	int initenvpos = 0;
	if (WithPOSIXRuntime)
		initenvpos = 1;

	for (unsigned i = es->stack.size() - 1; i >= initenvpos + 1; i--) {
		StackFrame sf = es->stack[i];
		KInstruction* kinst = sf.caller;
		/*std::cerr << "\ndown in the stack to: "
				<< kinst->inst->getParent()->getParent()->getNameStr() << "@"
				<< kinst->info->line << "\n";*/
		ret = isReachableForward(kinst, dest);

		//** stop searching if destination event has been found
		if (ret >= 0)
			break;
	}

	return ret;
}

TyuReplaySearcher::~TyuReplaySearcher() {
}

ExecutionState &TyuReplaySearcher::selectState() {

	ExecutionState *backes = states.back();

	Instruction *inst = backes->pc->inst;
	//std::cerr<< inst->getParent()->getParent()->getNameStr() << "????\n";
	if (getToUserMain == false
			&& std::find(foi.begin(), foi.end(), inst->getParent()->getParent()->getNameStr()) != foi.end()) {
		getToUserMain = true;
	}

	/*std::cerr<<"\nselect -- \t" << getToUserMain << "\t" <<inst->getParent()->getParent()->getNameStr() <<"\t"<< inst->getParent()->getNameStr() << "\n";
	printDebug(inst);*/
	 //inst->dump();

	if (getToUserMain != true || random == true) {
		return *backes;
	}

	if (getTarget == true) //TY: we found the last event
			{
		std::cerr << "reached the target\n";
		std::cerr << "last choice is " << lastChoice->pc->info->file << ":"
				<< lastChoice->pc->info->line << "\n";
		//lastChoice->pc->inst->dump();
		random = true;
		return *lastChoice;
	}

	//std::cerr <<"target is "<< targetInstList[eventPtr]->info->line <<"\n";
	// targetInstList[eventPtr]->inst->dump();

	int stateIt = 0; //TY: identifier for each state

	getToUserMain = false;
	//std::cerr << stateIt << " | " << backes->stateId << "@" << backes->pc->info->line << ":" <<backes->pc->info->line << " distance to "<< targetInstList[eventPtr]->info->line << " = "<<minDist <<"\n";
	do {
		ExecutionState *minState = NULL;
		int minDist = 100000000;
		//** pick state with shortest distance to next event
		for (std::vector<ExecutionState*>::iterator it = states.begin(), ie =
				states.end(); it != ie; ++it) {
			ExecutionState *es = *it;

			Instruction *state_i = es->pc->inst;
			BasicBlock *state_bb = state_i->getParent();

			//if(states.back()->pc->info->file.find("example.c")!=std::string::npos){
			/*std::cerr << "\t=>" << state_bb->getNameStr() << "\n\t";
			printDebug(state_i);
			std::cerr << "\t";*/
			//state_i->dump();
			// }

			if (es->goalsReached == -1) //initialize goalsReached
				es->goalsReached = eventPtr;

			if (es->goalsReached != eventPtr) { //we only want to pick states that are have already reached the current goal
				stateIt++;
				continue;
			}

			int dist;

		/*	std::cerr << " compute distance from " << es->pc->info->line
					<< " to  " << targetInstList[eventPtr]->info->line << "\n";*/
			//** check if we have the distance of this BB to the event already cached
			if (bbCache.find(es->pc->inst->getParent()) != bbCache.end()) {
				/*std::cerr << "bbSrc: "
						<< es->pc->inst->getParent()->getNameStr()
						<< " | bbDest: "
						<< targetInstList[eventPtr]->inst->getParent()->getNameStr()
						<< "\n";*/
				dist = bbCache[es->pc->inst->getParent()];
			} else {
				dist = isReachable(es, es->pc, targetInstList[eventPtr]);
				bbCache[es->pc->inst->getParent()] = dist;
			}

		/*	std::cerr << stateIt << " | " << es->stateId << "@"
					 << es->pc->info->file <<":"<< es->pc->info->line << " distance to "
					<< targetInstList[eventPtr]->info->line << " = " << dist
					<< "\n";*/

			//** check if the state reaches the event or not; if so, pick the state with shortest distance
			if (dist == -1) {
				std::cerr << stateIt << " | " << es->stateId << "@"
						<< es->pc->info->line << " doesn't reach "
						<< targetInstList[eventPtr]->info->line << "\n";

				std::cerr << " Terminating state " << es->stateId
						<< " because it cannot reach next event.\n";
				ExecutionState &tmpState = **it;
				executor.terminateState(tmpState);
			} else if (dist < minDist) {
				/*std::cerr << stateIt << " | " << es->stateId << "@"
						<< es->pc->info->line << " reaches "
						<< targetInstList[eventPtr]->info->line
						<< " with smaller distance (" << dist << " < "
						<< minDist << ")\n";*/
				minState = es;
				minDist = dist;
			}
			stateIt++;
		}

		//** there is a state that reaches the next target
		if (minState != NULL) {
			/*std::cerr << "Picked state " << minState->stateId << "\n";*/

			//** state reaches an event target
			if (minState->pc->inst == targetInstList[eventPtr]->inst) //test function and filename as well?
					{
				eventPtr++;
				minState->goalsReached += 1; //** increment the number of goals/targets reached by the current state

				std::cerr << "Partial goal is achieved\n";

				if (eventPtr == targetInstList.size()) //** we found the last goal
						{
					std::cerr << "Reached last goal (state "
							<< minState->stateId << " : "
							<< minState->goalsReached << " goals)\n";
					getTarget = true;
					executor.lastState = minState;
					//states.clear();
					// executor.terminateState(*minState);
					// continue;

					//TY: mark thread as finished
					//threadHasFinished[getThreadName()] = true;
					/*std::cerr << "*** threadHasFinished["<<getThreadName()<<"] = "<< threadHasFinished[getThreadName()]<< "\n";
					 for(map<string,bool>::iterator iter = threadHasFinished.begin(); iter != threadHasFinished.end(); ++iter )
					 {
					 std::cerr<<">>> allThreadsFinished["<<(*iter).first<<"] = "<< (*iter).second <<"\n";
					 }*/
					//
				} else   //** we found an intermediate goal
				{
					std::cerr << eventPtr << " of " << targetInstList.size()
							<< " (state " << minState->stateId << " : "
							<< minState->goalsReached
							<< " goals); Reached partial goal "
							<< minState->pc->info->line
							<< " -> move step forward\n";
					std::cerr << "Cur PC : " << minState->pc->info->file << ":"
							<< minState->pc->info->line << "@"
							<< minState->pc->info->assemblyLine << "\n";
					std::cerr << "Next target : "
							<< targetInstList[eventPtr]->info->file << ":"
							<< targetInstList[eventPtr]->info->line << "@"
							<< targetInstList[eventPtr]->info->assemblyLine
							<< " ["
							<< targetInstList[eventPtr]->inst->getOpcodeName()
							<< "]\n";
					std::cerr << "------------------\n";
				}

				bbCache.clear(); //** clear BB cache because we change the target event
			}
			lastChoice = minState;
		/*	if(lastChoice->pc->info->file.find("rm.c")!=std::string::npos
					//||
			){*/
		//	std::cerr << "final choice is " << lastChoice->pc->info->file << ":"
			//		<< lastChoice->pc->info->line << "\n";
			//lastChoice->pc->inst->dump();
		//	}

			return *minState;
		}

		//** if we didn't find any feasible state among the ones with most goals reached so far,
		//** then we must backtrack events in order to proceed with the search
		if (eventPtr == 0)
			break;
		else {
			eventPtr--;
			std::cerr << "Need to backtrack to target " << eventPtr << " of "
					<< targetInstList.size() << "\n";
			std::cerr << "Next target : "
					<< extractFileBasename(targetInstList[eventPtr]->info->file)
					<< ":" << targetInstList[eventPtr]->info->line << "\n";
		}
	} while (true);

	//we couldn't find any feasible state...
	std::cerr
			<< "Can't find feasible path to the next event. Now terminating program. \n";
	states.clear();
	ExecutionState* retVal = NULL;

	return *retVal;
}

void TyuReplaySearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	states.insert(states.end(), addedStates.begin(), addedStates.end());
	for (std::set<ExecutionState*>::const_iterator it = removedStates.begin(),
			ie = removedStates.end(); it != ie; ++it) {
		ExecutionState *es = *it;
		if (es == states.back()) {
			states.pop_back();
		} else {
			bool ok = false;

			for (std::vector<ExecutionState*>::iterator ait = states.begin(),
					aie = states.end(); ait != aie; ++ait) {
				if (es == *ait) {
					states.erase(ait);
					ok = true;
					break;
				}
			}

			assert(ok && "invalid state removed");
		}
	}
}

///

char DomInterfacePass::ID = 0;
DomInterfacePass::DomInterfacePass(std::vector<llvm::Instruction*>* inputList,
		std::set<llvm::Function*>* unvisitedList) :
		llvm::FunctionPass(ID) {
	this->inList = inputList;
	this->unvisitedF = unvisitedList;
	if (inList != NULL) {
		for (unsigned i = 0; i < inList->size(); i++) {
			outputList.push_back(inList->at(i));
		}
	}
}

void DomInterfacePass::getAnalysisUsage(AnalysisUsage &AU) const {
	AU.setPreservesAll();
	AU.addRequired<llvm::DominatorTree>();
	AU.addRequired<llvm::PostDominatorTree>();
}

bool DomInterfacePass::runOnFunction(Function& f) {
	Instruction* targetInst = NULL;
	if (inList != NULL) {
		for (unsigned i = 0; i < inList->size(); i++) {
			if (inList->at(i)->getParent()->getParent() == &f) {
				targetInst = inList->at(i);
				break;
			}
		}
	}

	if (this->unvisitedF->find(&f) != this->unvisitedF->end()) {
		outputPrunedList.push_back(&f.getEntryBlock());
	} else {
		PostDominatorTree &PDT = getAnalysis<PostDominatorTree>();

		for (Function::iterator FI = f.begin(), FE = f.end(); FI != FE; FI++) {
			BasicBlock* curBB = FI;
			for (BasicBlock::iterator BI = curBB->begin(), BE = curBB->end();
					BI != BE; BI++) {
				Instruction* inst = BI;
				if (isa < CallInst > (inst)) {
					CallInst* callInst = (CallInst*) inst;
					if (callInst->getCalledFunction() != NULL) {
						if (this->unvisitedF->find(
								callInst->getCalledFunction())
								!= this->unvisitedF->end()) {
							if (targetInst != NULL) {
								if (targetInst->getParent() != curBB) {
									outputPrunedList.push_back(curBB);
								}
								if (!PDT.properlyDominates(curBB,
										targetInst->getParent())) {
									for (Function::iterator sFI = f.begin(),
											sFE = f.end(); sFI != sFE; sFI++) {
										BasicBlock* kBB;

										if (PDT.properlyDominates(curBB, kBB)) {
											//add all BB postdom by curcall
											outputPrunedList.push_back(kBB);
										}
									}
								}

							} else {
								outputPrunedList.push_back(curBB);
								for (Function::iterator sFI = f.begin(), sFE =
										f.end(); sFI != sFE; sFI++) {
									BasicBlock* kBB;

									if (PDT.properlyDominates(curBB, kBB)) {
										//add all BB postdom by curcall
										outputPrunedList.push_back(kBB);
									}
								}
							}
						}
					}
				}
			}
		}
	}

	if (targetInst == NULL)
		return false;
	DominatorTree &DT = getAnalysis<DominatorTree>();
	unsigned kk = 0;
	for (unsigned i = 0; i < outputList.size(); i++) {
		if (outputList[i] == targetInst) {
			kk = i;
			break;
		}
	}
	DomTreeNode* dtn = DT.getNode(targetInst->getParent());
	if (dtn == NULL) {
		//	std::cerr<<"dtn is null\n";
		targetInst->dump();
		return false;
	}
	DomTreeNode* idom = dtn->getIDom();
	//	std::vector<llvm::BasicBlock*> domset;
	while (idom != NULL && idom != dtn) {
		dtn = idom;
		if (dtn != DT.getRootNode()) {
			BasicBlock* bb = dtn->getBlock();
			if (bb != NULL) {
				outputList.insert(outputList.begin() + kk, bb->begin());
			}
		}
		idom = dtn->getIDom();
	}
	return false;
}

//** TY: added from bugredux } #######################

///

ExecutionState &DFSSearcher::selectState() {

	Instruction *inst = states.back()->pc->inst;
	std::cerr << "###########################\n";
	std::cerr << "select -- \t" << inst->getParent()->getParent()->getNameStr()
			<< "\n";

//	printDebug(inst);
//	inst->dump();

	//** pick state with shortest distance to next event
	for (std::vector<ExecutionState*>::iterator it = states.begin(), ie =
			states.end(); it != ie; ++it) {
		ExecutionState *es = *it;

		Instruction *state_i = es->pc->inst;
		BasicBlock *state_bb = state_i->getParent();

	/*	if(states.back()->pc->info->file.find("rm.c")!=std::string::npos ||
				states.back()->pc->info->file.find("remove.c")!=std::string::npos ||
				states.back()->pc->info->file.find("fts.c")!=std::string::npos){
		std::cerr << "\t=>" << state_bb->getNameStr() << "\n\t";
		printDebug(state_i);
	}*/
	}

	return *states.back();
}

void DFSSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	states.insert(states.end(), addedStates.begin(), addedStates.end());
	for (std::set<ExecutionState*>::const_iterator it = removedStates.begin(),
			ie = removedStates.end(); it != ie; ++it) {
		ExecutionState *es = *it;
		if (es == states.back()) {
			states.pop_back();
		} else {
			bool ok = false;

			for (std::vector<ExecutionState*>::iterator it = states.begin(),
					ie = states.end(); it != ie; ++it) {
				if (es == *it) {
					states.erase(it);
					ok = true;
					break;
				}
			}

			assert(ok && "invalid state removed");
		}
	}
}

///

ExecutionState &RandomSearcher::selectState() {
	return *states[theRNG.getInt32() % states.size()];
}

void RandomSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	states.insert(states.end(), addedStates.begin(), addedStates.end());
	for (std::set<ExecutionState*>::const_iterator it = removedStates.begin(),
			ie = removedStates.end(); it != ie; ++it) {
		ExecutionState *es = *it;
		bool ok = false;

		for (std::vector<ExecutionState*>::iterator it = states.begin(), ie =
				states.end(); it != ie; ++it) {
			if (es == *it) {
				states.erase(it);
				ok = true;
				break;
			}
		}

		assert(ok && "invalid state removed");
	}
}

///

WeightedRandomSearcher::WeightedRandomSearcher(Executor &_executor,
		WeightType _type) :
		executor(_executor), states(new DiscretePDF<ExecutionState*>()), type(
				_type) {
	switch (type) {
	case Depth:
		updateWeights = false;
		break;
	case InstCount:
	case CPInstCount:
	case QueryCost:
	case MinDistToUncovered:
	case CoveringNew:
		updateWeights = true;
		break;
	default:
		assert(0 && "invalid weight type");
	}
}

WeightedRandomSearcher::~WeightedRandomSearcher() {
	delete states;
}

ExecutionState &WeightedRandomSearcher::selectState() {
	return *states->choose(theRNG.getDoubleL());
}

double WeightedRandomSearcher::getWeight(ExecutionState *es) {
	switch (type) {
	default:
	case Depth:
		return es->weight;
	case InstCount: {
		uint64_t count = theStatisticManager->getIndexedValue(
				stats::instructions, es->pc->info->id);
		double inv = 1. / std::max((uint64_t) 1, count);
		return inv * inv;
	}
	case CPInstCount: {
		StackFrame &sf = es->stack.back();
		uint64_t count = sf.callPathNode->statistics.getValue(
				stats::instructions);
		double inv = 1. / std::max((uint64_t) 1, count);
		return inv;
	}
	case QueryCost:
		return (es->queryCost < .1) ? 1. : 1. / es->queryCost;
	case CoveringNew:
	case MinDistToUncovered: {
		uint64_t md2u = computeMinDistToUncovered(es->pc,
				es->stack.back().minDistToUncoveredOnReturn);

		double invMD2U = 1. / (md2u ? md2u : 10000);
		if (type == CoveringNew) {
			double invCovNew = 0.;
			if (es->instsSinceCovNew)
				invCovNew = 1. / std::max(1, (int) es->instsSinceCovNew - 1000);
			return (invCovNew * invCovNew + invMD2U * invMD2U);
		} else {
			return invMD2U * invMD2U;
		}
	}
	}
}

void WeightedRandomSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	if (current && updateWeights && !removedStates.count(current))
		states->update(current, getWeight(current));

	for (std::set<ExecutionState*>::const_iterator it = addedStates.begin(),
			ie = addedStates.end(); it != ie; ++it) {
		ExecutionState *es = *it;
		states->insert(es, getWeight(es));
	}

	for (std::set<ExecutionState*>::const_iterator it = removedStates.begin(),
			ie = removedStates.end(); it != ie; ++it) {
		states->remove(*it);
	}
}

bool WeightedRandomSearcher::empty() {
	return states->empty();
}

///

RandomPathSearcher::RandomPathSearcher(Executor &_executor) :
		executor(_executor) {
}

RandomPathSearcher::~RandomPathSearcher() {
}

ExecutionState &RandomPathSearcher::selectState() {
	unsigned flips = 0, bits = 0;
	PTree::Node *n = executor.processTree->root;

	while (!n->data) {
		if (!n->left) {
			n = n->right;
		} else if (!n->right) {
			n = n->left;
		} else {
			if (bits == 0) {
				flips = theRNG.getInt32();
				bits = 32;
			}
			--bits;
			n = (flips & (1 << bits)) ? n->left : n->right;
		}
	}

	return *n->data;
}

void RandomPathSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
}

bool RandomPathSearcher::empty() {
	return executor.states.empty();
}

///

BumpMergingSearcher::BumpMergingSearcher(Executor &_executor,
		Searcher *_baseSearcher) :
		executor(_executor), baseSearcher(_baseSearcher), mergeFunction(
				executor.kmodule->kleeMergeFn) {
}

BumpMergingSearcher::~BumpMergingSearcher() {
	delete baseSearcher;
}

///

Instruction *BumpMergingSearcher::getMergePoint(ExecutionState &es) {
	if (mergeFunction) {
		Instruction *i = es.pc->inst;

		if (i->getOpcode() == Instruction::Call) {
			CallSite cs(cast < CallInst > (i));
			if (mergeFunction == cs.getCalledFunction())
				return i;
		}
	}

	return 0;
}

ExecutionState &BumpMergingSearcher::selectState() {
	entry:
	// out of base states, pick one to pop
	if (baseSearcher->empty()) {
		std::map<llvm::Instruction*, ExecutionState*>::iterator it =
				statesAtMerge.begin();
		ExecutionState *es = it->second;
		statesAtMerge.erase(it);
		++es->pc;

		baseSearcher->addState(es);
	}

	ExecutionState &es = baseSearcher->selectState();

	if (Instruction *mp = getMergePoint(es)) {
		std::map<llvm::Instruction*, ExecutionState*>::iterator it =
				statesAtMerge.find(mp);

		baseSearcher->removeState(&es);

		if (it == statesAtMerge.end()) {
			statesAtMerge.insert(std::make_pair(mp, &es));
		} else {
			ExecutionState *mergeWith = it->second;
			if (mergeWith->merge(es)) {
				// hack, because we are terminating the state we need to let
				// the baseSearcher know about it again
				baseSearcher->addState(&es);
				executor.terminateState(es);
			} else {
				it->second = &es; // the bump
				++mergeWith->pc;

				baseSearcher->addState(mergeWith);
			}
		}

		goto entry;
	} else {
		return es;
	}
}

void BumpMergingSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	baseSearcher->update(current, addedStates, removedStates);
}

///

MergingSearcher::MergingSearcher(Executor &_executor, Searcher *_baseSearcher) :
		executor(_executor), baseSearcher(_baseSearcher), mergeFunction(
				executor.kmodule->kleeMergeFn) {
}

MergingSearcher::~MergingSearcher() {
	delete baseSearcher;
}

///

Instruction *MergingSearcher::getMergePoint(ExecutionState &es) {
	if (mergeFunction) {
		Instruction *i = es.pc->inst;

		if (i->getOpcode() == Instruction::Call) {
			CallSite cs(cast < CallInst > (i));
			if (mergeFunction == cs.getCalledFunction())
				return i;
		}
	}

	return 0;
}

ExecutionState &MergingSearcher::selectState() {
	while (!baseSearcher->empty()) {
		ExecutionState &es = baseSearcher->selectState();
		if (getMergePoint(es)) {
			baseSearcher->removeState(&es, &es);
			statesAtMerge.insert(&es);
		} else {
			return es;
		}
	}

	// build map of merge point -> state list
	std::map<Instruction*, std::vector<ExecutionState*> > merges;
	for (std::set<ExecutionState*>::const_iterator it = statesAtMerge.begin(),
			ie = statesAtMerge.end(); it != ie; ++it) {
		ExecutionState &state = **it;
		Instruction *mp = getMergePoint(state);

		merges[mp].push_back(&state);
	}

	if (DebugLogMerge)
		std::cerr << "-- all at merge --\n";
	for (std::map<Instruction*, std::vector<ExecutionState*> >::iterator it =
			merges.begin(), ie = merges.end(); it != ie; ++it) {
		if (DebugLogMerge) {
			std::cerr << "\tmerge: " << it->first << " [";
			for (std::vector<ExecutionState*>::iterator it2 =
					it->second.begin(), ie2 = it->second.end(); it2 != ie2;
					++it2) {
				ExecutionState *state = *it2;
				std::cerr << state << ", ";
			}
			std::cerr << "]\n";
		}

		// merge states
		std::set<ExecutionState*> toMerge(it->second.begin(), it->second.end());
		while (!toMerge.empty()) {
			ExecutionState *base = *toMerge.begin();
			toMerge.erase(toMerge.begin());

			std::set<ExecutionState*> toErase;
			for (std::set<ExecutionState*>::iterator it = toMerge.begin(), ie =
					toMerge.end(); it != ie; ++it) {
				ExecutionState *mergeWith = *it;

				if (base->merge(*mergeWith)) {
					toErase.insert(mergeWith);
				}
			}
			if (DebugLogMerge && !toErase.empty()) {
				std::cerr << "\t\tmerged: " << base << " with [";
				for (std::set<ExecutionState*>::iterator it = toErase.begin(),
						ie = toErase.end(); it != ie; ++it) {
					if (it != toErase.begin())
						std::cerr << ", ";
					std::cerr << *it;
				}
				std::cerr << "]\n";
			}
			for (std::set<ExecutionState*>::iterator it = toErase.begin(), ie =
					toErase.end(); it != ie; ++it) {
				std::set<ExecutionState*>::iterator it2 = toMerge.find(*it);
				assert(it2 != toMerge.end());
				executor.terminateState(**it);
				toMerge.erase(it2);
			}

			// step past merge and toss base back in pool
			statesAtMerge.erase(statesAtMerge.find(base));
			++base->pc;
			baseSearcher->addState(base);
		}
	}

	if (DebugLogMerge)
		std::cerr << "-- merge complete, continuing --\n";

	return selectState();
}

void MergingSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	if (!removedStates.empty()) {
		std::set<ExecutionState *> alt = removedStates;
		for (std::set<ExecutionState*>::const_iterator it =
				removedStates.begin(), ie = removedStates.end(); it != ie;
				++it) {
			ExecutionState *es = *it;
			std::set<ExecutionState*>::const_iterator it2 = statesAtMerge.find(
					es);
			if (it2 != statesAtMerge.end()) {
				statesAtMerge.erase(it2);
				alt.erase(alt.find(es));
			}
		}
		baseSearcher->update(current, addedStates, alt);
	} else {
		baseSearcher->update(current, addedStates, removedStates);
	}
}

///

BatchingSearcher::BatchingSearcher(Searcher *_baseSearcher, double _timeBudget,
		unsigned _instructionBudget) :
		baseSearcher(_baseSearcher), timeBudget(_timeBudget), instructionBudget(
				_instructionBudget), lastState(0) {

}

BatchingSearcher::~BatchingSearcher() {
	delete baseSearcher;
}

ExecutionState &BatchingSearcher::selectState() {
	if (!lastState || (util::getWallTime() - lastStartTime) > timeBudget
			|| (stats::instructions - lastStartInstructions)
					> instructionBudget) {
		if (lastState) {
			double delta = util::getWallTime() - lastStartTime;
			if (delta > timeBudget * 1.1) {
				std::cerr << "KLEE: increased time budget from " << timeBudget
						<< " to " << delta << "\n";
				timeBudget = delta;
			}
		}
		lastState = &baseSearcher->selectState();
		lastStartTime = util::getWallTime();
		lastStartInstructions = stats::instructions;
		return *lastState;
	} else {
		return *lastState;
	}
}

void BatchingSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	if (removedStates.count(lastState))
		lastState = 0;
	baseSearcher->update(current, addedStates, removedStates);
}

/***/

IterativeDeepeningTimeSearcher::IterativeDeepeningTimeSearcher(
		Searcher *_baseSearcher) :
		baseSearcher(_baseSearcher), time(1.) {
}

IterativeDeepeningTimeSearcher::~IterativeDeepeningTimeSearcher() {
	delete baseSearcher;
}

ExecutionState &IterativeDeepeningTimeSearcher::selectState() {
	ExecutionState &res = baseSearcher->selectState();
	startTime = util::getWallTime();
	return res;
}

void IterativeDeepeningTimeSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	double elapsed = util::getWallTime() - startTime;

	if (!removedStates.empty()) {
		std::set<ExecutionState *> alt = removedStates;
		for (std::set<ExecutionState*>::const_iterator it =
				removedStates.begin(), ie = removedStates.end(); it != ie;
				++it) {
			ExecutionState *es = *it;
			std::set<ExecutionState*>::const_iterator it2 = pausedStates.find(
					es);
			if (it2 != pausedStates.end()) {
				pausedStates.erase(it);
				alt.erase(alt.find(es));
			}
		}
		baseSearcher->update(current, addedStates, alt);
	} else {
		baseSearcher->update(current, addedStates, removedStates);
	}

	if (current && !removedStates.count(current) && elapsed > time) {
		pausedStates.insert(current);
		baseSearcher->removeState(current);
	}

	if (baseSearcher->empty()) {
		time *= 2;
		std::cerr << "KLEE: increasing time budget to: " << time << "\n";
		baseSearcher->update(0, pausedStates, std::set<ExecutionState*>());
		pausedStates.clear();
	}
}

/***/

InterleavedSearcher::InterleavedSearcher(
		const std::vector<Searcher*> &_searchers) :
		searchers(_searchers), index(1) {
}

InterleavedSearcher::~InterleavedSearcher() {
	for (std::vector<Searcher*>::const_iterator it = searchers.begin(), ie =
			searchers.end(); it != ie; ++it)
		delete *it;
}

ExecutionState &InterleavedSearcher::selectState() {
	Searcher *s = searchers[--index];
	if (index == 0)
		index = searchers.size();
	return s->selectState();
}

void InterleavedSearcher::update(ExecutionState *current,
		const std::set<ExecutionState*> &addedStates,
		const std::set<ExecutionState*> &removedStates) {
	for (std::vector<Searcher*>::const_iterator it = searchers.begin(), ie =
			searchers.end(); it != ie; ++it)
		(*it)->update(current, addedStates, removedStates);
}
