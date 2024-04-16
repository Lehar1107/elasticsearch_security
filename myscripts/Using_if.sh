#! /bin/bash

#compare strings

word=b
if  [ $word == "B" ] || [ $word == "b" ] 
then
   echo "CONDITION b IS TRUE"
elif [ $word == "a" ] 
then 
   echo "CONDITION a IS TRUE"
else
   echo "CONDITION IS FALSE"
fi

#compare intergers

#agar <= symbols use krne hai to parenthesis use kre
   # count=10
   # if (( $count <= 10 ))
   # then
   #   echo "CONDITION IS TRUE"
   # fi
#vrna
   # [ count -le 10 ] exe use kre
    # count=10
    # if [ $count -le 10 ] //less than equal to
    # then
    #   echo "CONDITION IS TRUE"
    # fi