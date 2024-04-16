#1 /bin/bash

#add string

os=('ubuntu' 'windows' 'kali')

# os[0]='mac' #to update the index
# #see all the values
# echo "${os[@]}"
os[6]='mac'
unset os[2]
echo "${os[@]}"
echo "${os[0]}"
echo "${os[1]}"

echo "${!os[@]}" #//print the indexes of the values
echo "${#os[@]}" #//print the values in the array list

string=dfvgbhn
echo "${string[@]}"
echo "${string[0]}"
echo "${string[1]}"

#the output will be same at every index
# dfvgbhn
# dfvgbhn








# os=('ubuntu' 'windows' 'kali')

# # os[0]='mac' #to update the index
# # #see all the values
# # echo "${os[@]}"
# os[6]='mac'
# unset os[2]
# echo "${os[@]}"
# echo "${os[0]}"
# echo "${os[1]}"

# echo "${!os[@]}" #//print the indexes of the values
# echo "${#os[@]}" #//print the values in the array list

#output
# Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
# $ ./Array.sh
# ubuntu windows mac
# ubuntu
# windows
# 0 1 6
# 3





# os=('ubuntu' 'windows' 'kali')

# os[0]='mac' #to update the index
# #see all the values
# echo "${os[@]}"

# unset os[2]
# echo "${os[@]}"
# echo "${os[0]}"
# echo "${os[1]}"

# echo "${!os[@]}" #//print the indexes of the values
# echo "${#os[@]}" #//print the values in the array list
