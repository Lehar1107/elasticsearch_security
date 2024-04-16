#read and execute

echo -e "Enter some character : \c"
read value

case $value in
   [a-z] )
        echo "User entered $value a to z"  ;;
   [A-Z] )
        echo "User entered $value A to Z"  ;;
   [0-9] )
        echo "User entered $value 0 to 9"  ;;
    ? )
        echo "User entered $value 0 special character"  ;;
    * )
        echo "Unknown input" ;;       
esac

#output
# $ ./switchcase.sh
# Enter some character : @
# User entered @ 0 special character



#write and execute
        # vehicle=$1

        # case $vehicle in
        # "car" )
        #         echo "Rent of $vehicle is 100 dollar"  ;;
        # "van" )
        #         echo "Rent of $vehicle is 80 dollar"  ;;
        # "bicycle" )
        #         echo "Rent of $vehicle is 5 dollar"  ;; 
        #     * )
        #         echo "Unknown vehicle" ;;       
        # esac

#output
# Lehar Agrawal@DESKTOP-OQPL5PT MINGW64 ~/Desktop/myscripts
# $ ./switchcase.sh car
# Rent of car is 100 dollar

