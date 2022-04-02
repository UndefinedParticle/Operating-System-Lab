#!/bin/bash
declare -A a
echo "Enter the size of the array =>"
read n
echo "Enter the elements of the array =>"
for((i=0;i<n;i++)) do
read a[$i]
done
echo "Sorted Array is =>"
echo $(printf "%s \0" ${a[@]} | sort -z | xargs -0n1)
