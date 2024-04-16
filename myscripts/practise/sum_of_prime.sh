#!/bin/bash

echo "Enter the range to print the the no"
read range
sum=0

function isPrime() {
 local num=$1
 if (( num == 1 )) then
  return 1
 fi
for (( i=2; i<num; i++ )); do
 if (( num % $i == 0 )) then
  return 1
 fi
done
  return 0
}

for (( i=1; i<=range; i++ )); do
 if isPrime "$i"
 then
    sum=$(( sum + i ));
 fi
 done
    echo "THE SUM OF $sum"




