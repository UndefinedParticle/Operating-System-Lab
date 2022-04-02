#!/bin/bash
echo "Enter a character =>"
read c
case $c in
[[:lower:]])
echo "Lower Case."
;;
[[:upper:]])
echo "Upper Case"
;;
[0-9])
echo "Digit"
;;
*)
echo "Wrong"
esac
