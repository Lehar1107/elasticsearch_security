#!/bin/bash
#open new termina by run the command
    n=1
while (( $n -le 3 ))
do 
    #echo "$n"
    #n=$(( n+1 ))
    #or
    echo "$n"
    (( ++n ))
    gnome-terminal &
done




#sleep
            #     n=1
            # while (( $n <= 10 ))
            # do 
            #     #echo "$n"
            #     #n=$(( n+1 ))
            #     #or
            #     echo "$n"
            #     (( ++n ))
            #     sleep 1 #see after 1 second after every output is on the scrren using sleep
            # done






#while loops
        # n=1
        # while (( $n <= 10 ))
        # do 
        #     #echo "$n"
        #     #n=$(( n+1 ))
        #     #or
        #     echo "$n"
        #     (( ++n ))
        # done

#########ORWHILE#########

        # n=1
        # while [ $n -le 10 ]
        # do 
        #     #echo "$n"
        #     #n=$(( n+1 ))
        #     #or
        #     echo "$n"
        #     (( ++n ))
        # done
