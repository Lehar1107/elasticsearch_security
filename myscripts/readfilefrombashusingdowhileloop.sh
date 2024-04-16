#!/bin/bash

while IFS= read -r line
do
  echo $line
done < /etc/host.conf
#here location of the file is given so that when you run this file you will see the output of another





# while read p
# do
#   echo $p
# done < readfilefrombashusingdowhileloop.sh








