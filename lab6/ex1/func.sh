#!/bin/bash

N=300000
MOD=1000000009
X=$1
result=1

for (( i = 0; i < $N; i++ )); do
	result=$(( result * x % MOD ))
done

# функция считает (x^n)%MOD
