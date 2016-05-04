#!/bin/bash
CMD=`ls $1`
for line in $CMD
do
filename="${line%.*}"
./generate.sh superimpose.txt $1/$filename.jpg $filename
done
