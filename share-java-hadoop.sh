#!/bin/bash
#$1 file name where is the cluster declared
#$2 path where jdk is located
#$3 path where hadoop is located
#$4 user
while read -a line; do
	scp $2 $4@$line:/tmp && scp $3 $4@$line:/tmp
done < $1

