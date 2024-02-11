#!/bin/bash
MAXN=10
REPEAT=5

touch logs

for (( N = 1; N <= $MAXN; N++ )); do
	for (( i = 0; i < $REPEAT; i++ )); do
		./$3
		sudo time -f"%e" -ao logs ./$1 $2 $N
	done
	sumTime=`cat logs | awk '{cur+=$1}END{print cur}'`
	avg=`bc -l <<< "scale=2; $sumTime / $REPEAT"`
	echo "$N $avg"
done
