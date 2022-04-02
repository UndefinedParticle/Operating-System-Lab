#!/bin/bash
echo "Give a natural Number => "
read n
sum=0
for((i=1;i<=n;i++))
do
sum=$((sum+i))
done
echo "First " $n "number sum is => " $sum
