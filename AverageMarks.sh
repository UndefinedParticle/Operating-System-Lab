#!/bin/bash
echo "Enter the total number of subjects => "
read n
echo "Enter the marks of all subject => "
sum=0
for((i=0;i<n;i++))
do
read a[$i]
sum=$(($sum+${a[$i]}))
done
avg=$(($sum/$n))
echo "Average marks is $avg"
echo "Your Grade is => "
if [ $avg -ge 80 -a $avg -le 100 ]
then
echo "A"
elif [ $avg -ge 60 -a $avg -lt 80 ]
then
echo "B"
elif [ $avg -ge 40 -a $avg -lt 60 ]
then
echo "C"
elif [ $avg -lt 40 ]
then
echo "F(fail)"
fi
