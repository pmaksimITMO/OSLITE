#!/bin/bash
for (( i = 2; i <= $2 + 1; i++ )); do
	./$1 $i &
done > /dev/null

# ps r - только звпущеные процессы
dump=`ps r | grep "./$1"`

# -n проверка на пустоту
while [ -n "$dump" ]; do
	sleep 0.5
	temp=`ps r | grep "./$1"`
done

