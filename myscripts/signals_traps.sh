#!/bin/bash

###for file

file=/c/Users/Lehar_Agrawal/Desktop/myscripts/ee

trap "rm -f $file && echo file deleted; exit" 0 2 15
echo "pid is $$"

        while (( COUNT < 10 ))
        do 
          sleep 10
          (( COUNT ++))
          echo $COUNT
        done
exit 0


##see the output in word pdf shell scripting

####to remove the trap witre //trap - 0 2 15


####trap

            # trap "echo exit command is detected" SIGINT
            # echo "pid is $$"

            #         while (( COUNT < 10 ))
            #         do 
            #         sleep 10
            #         (( COUNT ++))
            #         echo $COUNT
            #         done
            # exit 0

##here it is trapped by WRITINH SIGINT AFTER PRESSING CTRL+C IT IS TRAPPED

#####after opening anothe rbash still not killked then write sigkill to terminate the program

#WHEN WRITE SIGKILL OPEN ANOTHE BASH KILL THE COMMAND




######SIGNAL######3
        # echo "pid is $$"

        # while (( COUNT < 10 ))
        # do 
        #   sleep 10
        #   (( COUNT ++))
        #   echo $COUNT
        # done
        # exit 0


        # har Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
        # ##if you want to kill any procees you can open another bash and write its id
        # $ kill -9 828
