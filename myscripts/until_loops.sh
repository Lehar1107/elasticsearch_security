#!/bin/bash
#until loops
n=1
until ((  $n > 10 ))
do 
    echo $n
    n=$(( n+1 ))

done

#ouptut me 10 prin tni hoga jab tak condition true hai tab tak chla 10>= 10 this is false thats why its not go

#10>10 ye until ke according true hai


# until [ condition]
# do 
#   command 1
#   command 2
#   .........
#   command n
# done



