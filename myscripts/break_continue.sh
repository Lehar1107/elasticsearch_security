#!/bin/bash

###continue 

for (( i=1; i<=10; i++))
do
  if [ $i -eq 3 -o $i -eq 6 ]
  then 
      continue
  fi
    echo "$i"
done




# ####break####
# for (( i=1; i<=10; i++))
# do
#   if [ $i -gt 5 ]
#   then 
#       break
#   fi
#     echo "$i"
# done


##break after mark in select loop
        # select name in mark john tom ben
        # do 
        # case $name in
        # mark)
        #     if [ $name == mark ] 
        #     then
        #         echo "$name selected"
        #     break
        #     fi ;;
        # john)
        #     echo "$name selected" ;;
        # tom)
        #     echo "$name selected"
        #     ;;
        # ben)
        #     echo "$name selected"
        #     ;;  
        # *)
        #     echo "error please provided a num between  1..4"
        #     ;;
        
        # esac   
        # done
