#!/bin/bash

echo "Enter the number"
read value

if [ `expr $value % 2` == 0 ]
then 
  echo "Value is even $value"
else
  echo "Value is odd $value"
fi