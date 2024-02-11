#!/bin/bash
logFile="report.log"
array=()
i=0
while true; do
	if [[ $i -eq 100000 ]]; then
		echo "${#array[@]}" > $logFile
		i=0
	fi	
	array+=(0 1 2 3 4 5 6 7 8 9)
	let i=$i+1
done
