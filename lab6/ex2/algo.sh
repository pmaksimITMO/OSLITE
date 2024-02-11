#!/bin/bash

file=$1

cat $file |
while read val
do
	val=$((val * 2))
	echo $val
done >> $file
