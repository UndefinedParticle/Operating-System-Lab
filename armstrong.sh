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
x=$(($x + $(($l * $l * $l))))
done
if [ $x -eq $n ]
then
echo -n $n " is a Armstrong No."
else
echo -n $n " isn't a Armstrong No."
fi
echo
