#!/bin/bash
echo "Enter an positive integer => "
read n
temp=n
r=1
x=0
while [ $r != 0 ]
do
l=$(($temp % 10))
r=$(($temp / 10))
temp=$(($r))
x=$(($x*10 + $l))
done
if [ $x -eq $n ]
then
echo -n $n " is a palindrome."
else
echo -n $n " isn't a palindrome."
fi
echo
