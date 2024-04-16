#!/bin/bash

echo "Enter the range to print the tables"
read n
for (( i=1; i<=n; i++ )) 
do
  for (( j=1; j<=10; j++)) 
  do
    echo -e "$j"*"$i"="`expr $((j*i))` \t"
  done
done
echo -e "\n"
