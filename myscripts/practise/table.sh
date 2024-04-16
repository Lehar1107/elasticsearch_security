#!/bin/bash
echo "Enter the table value"
read n
for (( i=1; i<=10; i++ )) do
  sum=$n*$i
  echo "$n "*" $i "=" `expr $((n*i))`"
done
