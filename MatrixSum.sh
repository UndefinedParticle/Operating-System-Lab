#!/bin/bash
echo "Enter the dimension of the matrix =>"
read n
declare -A matrix1
declare -A matrix2
declare -A sum
echo "Enter the values of the first matrix(row wise)=>"
for((i=0;i<n;i++)) do
for((j=0;j<n;j++)) do
read matrix1[$i,$j]
done
done
echo "Enter the values of the second matix=>"
for((i=0;i<n;i++)) do
for((j=0;j<n;j++)) do
read matrix2[$i,$j]
done
done
echo "Sum of these two matrix =>"
for((i=0;i<n;i++)) do
for((j=0;j<n;j++)) do
sum[$i,$j]=$((${matrix1[$i,$j]}+${matrix2[$i,$j]}))
echo -n ${sum[$i,$j]} " "
done
echo
done

