#!/bin/bash
echo "Enter the number of line => "
read n
p=1
for((i=1;i<=n;i++))
do
for((j=1;j<=2*n-2*i;j++))
do echo -n " "
done
for((k=1;k<=i;k++))
do echo -n "$p   "
p=$(($p+1))
done
echo
done
