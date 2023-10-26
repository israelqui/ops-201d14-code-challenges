#!/bin/bash

# Script Name:                  function.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/25/2023
# purpose:                      print loggin history with functions
# Execution:                    bash add.sh or ./add.sh chmod -x add.sh

# Declaration of variables

 

# Declarations of functions

# Main
## use the 'last' command to get user login history
last
print

print_something () {
    echo this is the login history
}
echo "this is the login history"
echo $echo
print_something
print_something
print_something
## use the 'last' command to get user login history
# End