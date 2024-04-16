#!/bin/bash

echo "Enter a number"
read n
for (( num=1; num<=n; num++ )) do
 sum=1
 for (( i=2; i<=num/2; i++ )) do
  if (( num % i == 0)) then
   sum=$((sum+i))
  fi
  done
  if (( sum==num )) then
   echo "$num is a perfect no"
  fi
done
