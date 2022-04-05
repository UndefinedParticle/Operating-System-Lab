#!/bin/bash
declare -A m1
declare -A m2
declare -A m
echo "Enter the no. of row for matrix 1 =>"
read m
echo "Enter the no. of column for matrix 1 =>"
read n
echo "Enter the values of the first matrix(row wise)=>"
for((i=0;i<m;i++)) do
for((j=0;j<n;j++)) do
read m1[$i,$j]
done
done
echo "Enter the no. of row for matrix 2 =>"
read p
echo "Enter the no. of column for matrix 2 =>"
read q
echo "Enter the values of the second matix=>"
for((i=0;i<p;i++)) do
for((j=0;j<q;j++)) do
read m2[$i,$j]
done
done
for((i=0;i<m;i++)) do
for((j=0;j<q;j++)) do
m[$i,$j]=0
done
done
if [ $n==$p ]
then
echo "The required multiplication is =>"
for((i=0;i<m;i++)) do
for((j=0;j<q;j++)) do
for((k=0;k<n;k++)) do
m[$i,$j]=$((${m[$i,$j]} + $((${m1[$i,$k]}*${m2[$k,$j]}))))
done
echo -n ${m[$i,$j]} " "
done
echo
done
else
echo "Multiplication is not possible."
fi
