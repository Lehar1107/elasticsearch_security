#! /bin/bash

#* so that iterate each and every file in the folder
for item command in *
do
  if [ -f $item ]
  then 
   echo $item
  fi
done


## all the vales of these ls pwd date
# for command in ls pwd date
# do 
#   echo "-----$command----------"
#   $command
# done

# #output
# $ ./for_loops.sh
# -----ls----------
# Array.sh                  for_loops.sh      readfilefrombashusingdowhileloop.sh
# Readfromuser.sh           hello-world       store_data.sh
# Using_if.sh    
# -----pwd----------
# /c/Users/Lehar Agrawal/Desktop/myscripts
# -----date----------
# Fri Feb 16 17:34:15 IST 2024



##2ND type increment
# for (( i=0; i<5; i++))
# do 
#   echo $i
# done


##third type increment by 2 to print
# echo ${BASH_VERSION}
# for i in {1..10..2}  # only 2 ..{START..END..INCREMENT} 
# do 
#   echo $i
# done



        # ##third type increment by 2 to print
        # for i in {1..10..2}  # only 2 ..{START..END..INCREMENT} 
        # do 
        # echo $i
        # done

########output###

# $ ./for_loops.sh
# 1
# 3
# 5
# 7
# 9


# #third type
# for i in {1..10}  # only 2 .. 
# do 
#   echo $i
# done



# #four type
# for i in 1 2 3 4 5
# do 
#   echo $i
# done





            # for VARIABLE in 1 2 3 4 5  .. N
            # do 
            #    command 1-n
            # done
            # #OR---------------------
            # for VARIABLE in file1 file2 file3
            # do 
            #    command 1 on $VARIABLE
            #    comand -n
            # done

            # #OR------------------------------
            # for OUTPUT in $(LInux command)
            # do 
            #    command 1-n
            # done
            #OR-------------------
            # for (( EXP1; EXP2; EXP3 ))
            # do
            # done

