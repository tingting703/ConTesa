# combination binary location
COMBO="/home/tyu/Documents/CCMutator/combinations/combinations"

CCMUTATE_LIB="/home/tyu/Documents/CCMutator/install/lib"

OPT="/home/tyu/Documents/llvm/build/bin/opt"

LLC="/home/tyu/Documents/llvm/build/bin/llc"

echo "--------- Generating Remove Mutex Pair Mutants"
if [ "$1" == "" ]; then
    echo "Error: first command line option should be absolute/relative path to LLVM IR file to mutate"
    exit 1
fi

cd `dirname $1` || exit 1
mut_mutex="$OPT -basicaa -load $CCMUTATE_LIB/mutate_PosixLock.so -PosixLock"
mkdir mutants
source=`basename $1` || exit 1
$mut_mutex -analyze <$source 1>/dev/null 2>out.txt || exit 1
analyzeOut=(`cat out.txt`)  # array with mutex pairs
rm out.txt || exit 1
#analyzeOut[0]=$((analyzeOut[0] - 1))
#analyzeOut[1]=$((analyzeOut[1] - 1))
echo ${analyzeOut[0]}

# For each of the types of mutex pairs (analyzeOut[0]) preform each combination
# of first order mutex mutations
for (( i=0; i<${analyzeOut[0]}; i++ ))
do
    # Pick groups of 1,2,...analyzeOut[1]
	j=$((i + 1))
	num=$((analyzeOut[j] - 1))
	echo "$COMBO -p $i -c 0 -k "1" ${num}"
        comboOut=( $($COMBO -p $i -c 0 -k "1" ${num} ) )
        arrSize=${#comboOut[@]}
        for (( k=0; k<$arrSize; k++ ))
        do
	    echo "${comboOut[k]}"
            $mut_mutex -rm -pos=${comboOut[k]} <$source >"mutants/${source}_rmMutex_${i}_${comboOut[k]}.o"
	    $LLC -march=x86-64 mutants/${source}_rmMutex_${i}_${comboOut[k]}.o -o pbzip2.s
            g++ pbzip2.s -lpthread -lbz2 -o pbzip2
        done
        echo "Iteration: $j out of ${analyzeOut[1]}"
done
