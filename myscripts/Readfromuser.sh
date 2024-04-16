#! /bin/bash

#take multiple inputs without using array
# echo "Enter name"
# read
# echo "Name: $REPLY"

#output
# $ ./hello.sh
# Enter name
# lehar ashi agrawal mom dada
# Name: lehar ashi agrawal mom dada



#read script in array
# echo "enter names"
# read -a names
# echo "Names : ${names[0]}, ${names[1]}"

#output
# Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
# $ ./hello.sh
# enter names
# tom jerry
# Names : tom, jerry












##read input from terminal use read command and see output by running ./hello.sh command

# echo "Enter name:"
# read name
# echo "Entered name: $name"

#read username password and password used to be hidden write echo so th that new username password will be in next line

# read -p 'username: ' user_var
# read -sp 'password: ' pass_var
# echo
# echo "username : $user_var"
# echo "username : $pass_var"

#output
# $ ./hello.sh
# username: lehar
# password:
# username : lehar
# username : lehar

# read more inputs
# echo "Enter name:"
# read name1 name2 name3
# echo "Entered name: $name1, $name2, $name3"

#output
# $ ./hello.sh
# Enter name:
# lehar richa anshul
# Entered name: lehar, richa, anshul
