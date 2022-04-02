#!/bin/bash
echo "Enter the number of line =>"
read n
for((i=1;i<=n;i++))
do
for((j=1;j<=2*i-1;j++))
do echo -n " "
done
for((k=1;k<=n-i+1;k++))
do echo -n "* "
done
echo
done
