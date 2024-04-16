#! /bin/bash

# to perform addition between two numbers
num1=21.5
num2=5

# use -l to call the math library
echo "scale=2;sqrt($num)" | bc -l
echo "scale=2;3^3" | bc -l
#perform with decimal numbers use | bc
echo "$num1+$num2" |bc
#or
echo "21.5+5" | bc 
echo "21.5-5" | bc 
echo "21.5*5" | bc 
#use scale
echo "scale=2;21.5/5" | bc 
#by using this you wont get decimal values
#echo "21.5/5" | bc 
#we get remaider value
echo "21.5%5" | bc  

        # #another typr to perfrom the operations
        # echo $(expr $num1 + $num2 )
        # #when you use * with expr use \* to escape character multiply
        # echo $(expr $num1 \* $num2 )
        # echo $(expr $num1 - $num2 )
        # echo $(expr $num1 / $num2 )
        # #we get remaider value
        # echo $(expr $num1 % $num2 )

        # echo $(( num1 + num2 ))
        # echo $(( num1 * num2 ))
        # echo $(( num1 / num2 ))
        # echo $(( num1 - num2 ))
        # #we get remaider value
        # echo $(( num1 % num2 ))
