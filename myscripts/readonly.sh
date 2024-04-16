#!/bin/bash

hello(){
    echo "hello"
}

hii(){
    echo "hello world"
}
readonly -f hii
readonly -f 

#-f will give you the list of functions used








            # var=31
            
            # readonly var ## readonly variable

            # var=50   

            # echo "var => $var"

            # hello(){
            #     echo "hiii"
            # }

            # readonly -f hello  ## readonly function

            # hello(){
            #     echo "hello world again"
            # }



    # Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
    # $ ./readonly.sh
    # ./readonly.sh: line 7: var: readonly variable
    # var => 31
    # ./readonly.sh: line 19: hello: readonly function


