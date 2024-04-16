#! /bin/bash


age=50
#another use of OR operator
    if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
    echo "valid age"
    else
    echo "age is not valid"
fi


#another use of OR operator
            # if [ "$age" -gt 18 -o "$age" -lt 30 ]
            # then
            #     echo "valid age"
            #     else
            #     echo "age is not valid"
            # fi



# use of OR and operator
        # if [[ "$age" -gt 18 || "$age" -lt 30 ]]
        # then
        #     echo "valid age"
        #     else
        #     echo "age is not valid"
        # fi









##################AND########OPERATOR
        # age=25
        # #another use of && and operator
        # if [[ "$age" -gt 18 && "$age" -lt 30 ]]
        # then
        #     echo "valid age"
        #     else
        #     echo "age is not valid"
        # fi



#another use of && and operator
        # if [ "$age" -gt 18 -a "$age" -lt 30 ]
        # then
        #     echo "valid age"
        #     else
        #     echo "age is not valid"
        # fi


#use of and operator
        # if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
        # then
        #     echo "valid age"
        #     else
        #     echo "age is not valid"
        # fi
