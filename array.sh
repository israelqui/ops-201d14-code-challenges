#!/bin/bash

# Script Name:                  array.sh
# Author Name:                  Israel QuirolaSalas
# Date of latest revision:      10/26/2023
# purpose:                      Demo array
# Execution:                    bash array.sh or ./array.sh chmod -x array.sh
# Additional sources:           x

# Declaration of variables


# Declarations of functions
# directories

# mkdir dir1
# mkdir dir2
# mkdir dir3
# mkdir dir4

directories=("dir1" "dir2" "dir3" "dir4")
# Main

# echo "Four directories (dir1, dir2, dir3, dir4) created."

for dir in "${directories[@]}"; do
    mkdir "$dir"
    directories_paths+=("$dir")
done

for ((i=0; i<"${#directories_paths[@]}"; i++)); do
    dir="${directories_paths[i]}"
    touch "$dir/file_$i.txt"
done

echo "directory paths:"
for dir_path in "${directories_paths[@]}"; do
    echo "$dir_path"
done

echo "Created .txt files in each directory:"
for ((i=0; i<"${#directories_paths[@]}"; i++)) do
    dir="${directories_paths[i]}"
    echo "$dir/file_$i.txt"
done


##
echo "four  directories (${directoreis[*]}) and .txt files created."


# End