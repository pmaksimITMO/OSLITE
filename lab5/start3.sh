#!/bin/bash

N=10650000
K=30

echo "N=$N"
echo "K=$K"

for (( i=0; i<K; i++ )); do
	./newmem.bash $N &
	sleep 1
done

top -b -n 1 | head -n 30 | awk '{print $0}'
