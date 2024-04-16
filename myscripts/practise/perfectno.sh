#!/bin/bash

echo "Enter a number"
read n
sum=1
for (( i=2; i<=n/2; i++)) do
 if ((  n % i == 0 ))
 then
   sum=$(( sum+i ))
 fi
done

if (( sum == n ))
then
 echo "no is Perfect"
else 
 echo "no is not perfect"
fi
