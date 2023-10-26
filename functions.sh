#!/bin/bash

# Script Name:                  function.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/25/2023
# purpose:                      print loggin history with functions
# Execution:                    bash funtions.sh or ./functions.sh chmod -x functions.sh

# Declaration of variables

 

# Declarations of functions
last_login() {
    echo $1$2
    last
    echo "this is the loging history"
}
# Main

## use the 'last' command to get user login history
last_login "Login History" "Israel Quirola"

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