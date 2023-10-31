#!/bin/bash

# Script Name:                  conditionals.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/30/2023
# purpose:                      test a situation whether is true and proceed
# Execution:                    bash conditionals.sh or ./conditionals.sh chmod -x conditionals.sh
# Additional Sources:           https://chat.openai.com/

# Declaration of variables


# Declarations of functions

# Array of files and directories to check and create

files_and_folders_to_check=("challenge6.txt" "challenge06")

for item in "${files_and_folders_to_check[@]}"; do
    if [ ! -e "$item" ]; then
        if [[ "$item" == *"."* ]]; then
            touch "$item"
            echo "Created file: $item"
        else
            mkdir "$item"
            echo "Created directory: $item"
        fi
    else
        echo "$item already exists."
    fi
done

# Main
echo "Creation and checking of File and directory complete!"
# End