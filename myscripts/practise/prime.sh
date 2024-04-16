#!/bin/bash

echo "Enter the value of n"
read n

if [[ $n == 1 ]]
then 
 echo "Prime starts from 2"
else
for (( i=2; i < n; i++  ))
do 
  if [[ `expr $n % $i` == 0 ]]
  then
    echo "not a prime no"
    break
  fi
done
  if [[ $n == $i ]]
  then
    echo "a prime no"
   fi
fi






####OOOORRRRR

            # echo "Enter the value of n"
            # read n

            # if [ $n -eq 1 ]; then
            # echo "Prime numbers start from 2."
            # elif [ $n -lt 1 ]; then
            # echo "Please enter a positive integer greater than 1."
            # else
            # is_prime=true
            # for ((i = 2; i < n; i++)); do
            #     if [ $((n % i)) -eq 0 ]; then
            #     echo "Not a prime number."
            #     is_prime=false
            #     break
            #     fi
            # done

            # if [ "$is_prime" = true ]; then
            #     echo "It is a prime number."
            # fi
            # fi
