#!/bin/bash
declare -A a
echo "Enter the size of the array =>"
read n
echo "Enter the elements of the array =>"
for((i=0;i<n;i++)) do
read a[$i]
done
echo "Sorted Array is =>"
echo $(printf "%d\n" ${a[@]} | sort -n)
