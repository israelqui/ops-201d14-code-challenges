#!/bin/bash
#
# Script Name:                  loops.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/30/2023
# purpose:                      demo loops
# Execution:                    bash loops.sh or ./loops.sh chmod -x loops.sh
# Additional Sources:           x

# Declaration of variables

var=0

# Declarations of functions

while [ $var -lt 9 ]

do  
    echo $var
    var=$((var+1))
done

kill_process (){

    while :
    do
        ps aux
        read -p "Enter PID: " process_id
        kill -9 $process_id
    done
}

# Main
kill_process



# End