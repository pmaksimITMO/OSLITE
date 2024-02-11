#!/bin/bash
logFile="topStats2"
if [[ -f $logFile ]]; then rm $logFile; fi
./mem.bash &
./mem2.bash &
while true; do
	table=`top -b -n 1`
	dump=`grep "start2.sh" <<< $table`
	if [[ -z `grep "mem[2]*.bash" <<< $table` ]]; then break; fi
	date +%D\ %T
	awk '{print $0}' <<< $table | head -n 5 | tail -n 2
	echo $dump
	awk '{print $0}' <<< $table | head -n 12 | tail -n 5
	echo
	sleep 1
done >> $logFile

sudo dmesg | grep "mem[2]*.bash"
