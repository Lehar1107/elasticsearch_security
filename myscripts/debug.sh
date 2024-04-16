#!/bin/bash 

set -x
            ###OR
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


            # ####$ bash -x ./debug.sh


##1)  ###by writing at the above 0x
###2) #!/bin/bash -x
###3)  ###set -x