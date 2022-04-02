#!/bin/bash
echo "Enter the number of line =>"
read n
for((i=1;i<=n;i++))
do
for((j=1;j<=2*n-2*i;j++))
do echo -n " "
done
for((k=1;k<=i;k++))
do echo -n "$k "
done
if [ $i != 1 ]
then
for((p=i-1;p>=1;p--))
do echo -n "$p "
done
fi
echo
done
