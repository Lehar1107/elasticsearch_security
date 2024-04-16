#!/bin/bash

function print(){
    local name=$1  #this is local to the function
    echo "the name is $name"
}
name="tom"  #this is global to the functiom so tatswjy the value in after is not change
echo "The name is $name : before"
print Max
echo "The name is $name : After"


#output 
Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
$ ./local_variables.sh
The name is tom : before
the name is Max
The name is tom : After


###//declare local varibale

            # function print(){
            #     name=$1  #this is local to the function
            #     echo "the name is $name"
            # }
            # name="tom"  #this is global to the functiom so tatswjy the value in after is not change
            # echo "The name is $name : before"
            # print Max
            # echo "The name is $name : After"



# $ ./local_variables.sh
# The name is tom : before
# the name is Max
# The name is Max : After



            # function print(){
            #     name=$1
            #     echo "the name is $name"
            # }
            #  name = "tom"  this will not give you the result
            # name="tom"
            # echo "The name is $name"
            # print Max
            # echo "foo"

# #output
# $ ./local_variables.sh
# The name is tom
# the name is Max
# foo

