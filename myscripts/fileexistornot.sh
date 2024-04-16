#!/bin/bash

usage(){

echo "you need to provide the argument"
echo "usage: $0 file_name"

}
is_file_exist(){
local file="$1" ###$1 is privided for the function
[[  -f "$file"  ]] && return 0 || return 1
} 

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" )  ##this $1 is provided as an argument
then 
   echo "file found"
else
    echo "file not found"
fi

##output
# $ ./fileexistornot.sh
# you need to provide the argument
# usage: ./fileexistornot.sh file_name
# file not found

# Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
# $ ./fileexistornot.sh ee
# file found

