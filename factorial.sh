#!/bin/bash
fact ()
{
product=$1
if ((product <= 2)); then
echo $product
else
f=$((product -1))
f=$(fact $f)
f=$((f*product))
echo $f
fi
}
echo "Enter a Number => "
read n
echo -n "Factorial of " $n " is => "
if ((n==0)); then
echo "1"
else
fact $n
fi
