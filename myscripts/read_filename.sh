



#-w  to append the data in a already created file
        # echo -e "Enter the name of the filel: \c"
        # read file_name

        # if [ -r $file_name ]
        # then 
        # if [ -w $file_name ]
        # then
        #     echo "Type some text data. To quit press ctrl+d"
        #     cat >> $file_name
        # else
        #     echo "The file do not have permissions"
        # fi 
        # else 
        # echo "$file_name not exists"
        # fi


#-f check whether your file is regular or not
#-d used to check whether th edirectories is present tor not

# echo -e "Enter the name of the fiel: \c"
    
    # -e is an option that enables the interpretation of backslash escapes.
    # "Enter the name of the file: \c" is the string to be printed. The \c at the end suppresses the newline character, meaning that the cursor stays on the same line after the message is printed, allowing the user to input their response on the same line.
    # So, \n (newline character) is not used in this case. Instead, \c is used to control the cursor position after printing the message.

# read file_name

# if [ -f $file_name ]
# then 
#  echo "$file_name found"
# else 
#  echo "$file_name not found"
# fi




# -e(its a flag) is used to check whether yoyur file is present or no

# echo -e "Enter the name of the fiel: \c"
# read file_name

# if [ -e $file_name ]
# then 
#  echo "$file_name found"
# else 
#  echo "$file_name not found"
# fi

        #explaination
#          echo -e "Enter the name of the file: \c":

# This line displays the message "Enter the name of the file: " and uses the -e option to enable interpretation of backslash escapes. The \c is used to suppress the newline at the end of the message, allowing the user's input to appear on the same line.
# read file_name:

# This line reads the user's input and stores it in the variable file_name.
# if [ -f $file_name ]:

# This line starts an if statement that checks if the file specified by $file_name exists and is a regular file.
# The condition -f checks if the given path points to a regular file.
# then:

# If the condition in the if statement is true, the script executes the commands following the then keyword.
# echo "$file_name found":

# This line prints a message indicating that the file was found.
# else:

# If the condition in the if statement is false, the script executes the commands following the else keyword.
# echo "$file_name not found":

# This line prints a message indicating that the file was not found.
# fi:

# This line marks the end of the if statement.
# So, in summary, the script prompts the user to enter a file name, checks if the entered file exists, and prints an appropriate message based on the existence or non-existence of the specified file.

#output

# Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
# $ ./read_filename.sh
# Enter the name of the fiel: ee
# ee found

