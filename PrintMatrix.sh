#!/bin/bash
echo "Enter the number of row =>"
read m
echo "Enter the number of column =>"
read n
declare -A matrix
echo "Give the elements of the matrix(row wise) =>"
for((i=0;i<m;i++))
do
for((j=0;j<n;j++))
do
read matrix[$i,$j]
done
done
echo "The Matrix is => "
for((i=0;i<m;i++))
do
for((j=0;j<n;j++))
do
echo -n ${matrix[$i,$j]} " "
done
echo
done
