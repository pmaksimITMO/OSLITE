#!/bin/bash

SZ=45150
N=10

for (( nxt = 0; nxt < $N; nxt++ )); do
	for (( i = 0; i < $SZ; i++)); do
		echo $RANDOM
	done > $HOME/os-lite-cource/lab6/ex2/data_set/"$nxt"
done

