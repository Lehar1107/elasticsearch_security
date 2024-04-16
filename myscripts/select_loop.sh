#! /bin/bash

select name in mark john tom ben
do 
  case $name in
  mark)
     echo "$name selected" ;;
  john)
     echo "$name selected" ;;
  tom)
     echo "$name selected"
     ;;
  ben)
     echo "$name selected"
     ;;  
   *)
     echo "error please provided a num between  1..4"
     ;;
  
  esac   
done







# select name in mark john tom ben
# do 
#   echo "$name selected"
# done
##########output##########
# $ ./select_loop.sh
# 1) mark
# 2) john
# 3) tom
# 4) ben
# #? 1
# mark selected



# select variablename in list
# do
#   cmd 1
#   cmd n
# done