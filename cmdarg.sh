#!/bin/bash

s=0
args=$#

for i in $@
do
  s=$(( $s + $i ))
done

avg=$( echo " scale=2;($s/$args)" | bc)
echo "$avg"
