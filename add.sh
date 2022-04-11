#!/bin/bash
add ()
{
echo $(($1+$2))
}
sub()
{
if [ $1 -gt $2 ]
then
echo $(($1-$2))
else
echo $(($2-$1))
fi
}
echo "enter number1 =>"
read a
echo "enter number2 =>"
read b
x=1
while [ $x != 0 ]
do
echo "-----enter add or sub (or type 0)-----"
read x
echo "you typed "$x
case $x in
add)
{
add $a $b
}
;;
sub)
{
sub $a $b
}
;;
*)
echo "wrong type or exit"
;;
esac
done
