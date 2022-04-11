#!/bin/bash
factorial ()
{
n=$1
if [ $n -eq 0 ]
then
echo "1"
else
product=$(factorial $(($n -1)))
echo $(($n*$product))
fi
}
echo "Enter an positive integer => "
read n
echo "Factorial is => "
factorial $n
