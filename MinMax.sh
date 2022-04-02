#!/bin/bash
declare -A a
echo "Enter the size of the array =>"
read n
echo "Give the elements of the array =>"
for((i=0;i<n;i++)) do
read a[$i]
done
for((i=0;i<n-1;i++)) do
for((j=0;j<n-1-i;j++)) do
if [ ${a[$j]} -gt ${a[$(($j + 1))]} ]
then
temp=$((${a[$j]}))
a[$j]=$((${a[$(($j + 1))]}))
a[$(($j + 1))]=$temp
fi
done
done
echo "Minimum is => " ${a[0]}
echo "Maximum is => " ${a[$(($n - 1))]}
