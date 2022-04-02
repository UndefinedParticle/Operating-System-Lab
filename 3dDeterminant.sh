#!/bin/bash
declare -A m
echo "----- 3 dimensional determinant -----"
echo "Enter the matrix element(row wise) =>"
for((i=0;i<3;i++)) do
for((j=0;j<3;j++)) do
read m[$i,$j]
done
done
r1=$((${m[0,0]}*((${m[1,1]}*${m[2,2]})-(${m[2,1]}*${m[1,2]}))))
r2=$((${m[0,1]}*((${m[1,0]}*${m[2,2]})-(${m[2,0]}*${m[1,2]}))))
r3=$((${m[0,2]}*((${m[1,0]}*${m[2,1]})-(${m[2,0]}*${m[1,1]}))))
det=$(($r1-$r2+$r3))
echo -n "Determinant of the matrix is => " $det
echo
