#!/bin/bash
#
# Script Name:                  loops.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/25/2023
# purpose:                      demo loops
# Execution:                    bash loops.sh or ./loops.sh chmod -x loops.sh
# Additional Sources:           x

# Declaration of variables

var=0

# Declarations of functions

# Main
while [ $var -lt 15 ]

do  
    echo $var
    var=$((var+1))
done


# End