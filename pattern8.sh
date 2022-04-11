#!/bin/bash
echo "Enter the number of line => "
read n
p=1
echo "Pattern =>"
for((i=1;i<=n;i++))
do
for((k=1;k<=i;k++))
do echo -n "$p "
p=$(($p+1))
done
echo
done
