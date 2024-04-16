#! /bin/bash


#to print he no of arguments send in the message
# echo $0 $1 $2 $3

# args=("@")
# echo $@
# echo $#

###output
# $ ./store_data.sh me mom dad bhai
# ./store_data.sh me mom dad
# me mom dad bhai
# 4




   ##pass those arguments in array
#echo $0 $1 $2 $3
###using this @a converting an argument into an array
#args=("$@")
   ## echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
  ##you can use both type to print the values in array
#echo $@

# #pass those arguments in array
# echo $0 $1 $2 $3
# ###using this @a converting an argument into an array
# args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}

#output
# $ ./store_data.sh me mom dad bhai
# ./store_data.sh me mom dad
# me mom dad bhai




#take input on run script and store it in $1 $2 $3
#echo $1 $2 $3 ' > echo $1 $2 $3'

#output
#$ ./store_data.sh me mom dad 
#me mom dad  > echo $1 $2 $3

