//
//  TyuUtil.h
//
//
//  Created by Nuno Machado on 10/4/13.
//
//

#ifndef ____TyuUtil_H__
#define ____TyuUtil_H__

#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>
#include <fstream>
#include <map>
#include <vector>
#include <string>
#include <stdio.h>
#include <unistd.h>
#include <dirent.h>


struct TyuEvent {
    std::string tid;
    int loc;
    std::string filename;
    
} ;

typedef std::vector<TyuEvent> TyuEventVector;
typedef std::map<std::string, TyuEventVector > TyuTrace;

extern TyuTrace atrace; //** multimap: thread Id -> vector<tyuEvent>
extern TyuEventVector fulltrace; //** sorted vector containing all tyuEvents
extern std::map<std::string, bool> threadHasFinished;    //** Nuno: to mark whether a thread has finished or not (the program should only terminate when all threads finish)

void printTyuTrace();

//** searches for a file with extension .trace in current directory
char* findTraceFile();

//** from a path to file like a/b/c.txt, extracts the basename c.txt
std::string extractFileBasename(char* path);
std::string extractFileBasename(std::string path);

void print_state(const std::ios& stream);

//** generate a hash value for a given std::string
unsigned int generateHash(std::string str, size_t len);

TyuTrace loadTyuTrace();

TyuEventVector getFullTyuTrace();

#endif /* defined(____TyuUtil_H__) */
