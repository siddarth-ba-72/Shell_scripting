#! /usr/bin/bash
# This is a comment
echo "Hello world" # This is also a comment

# 1. Variables
# Two types -> System variables, User defined variables
# echo "Our shell directory -> " $BASH
# echo "Bash version -> " $BASH_VERSION
# echo "Home -> " $HOME
# echo "Current working directory -> " $PWD

# name=Siddarth
# echo My name is $name

# val=10
# echo the value isO $val

# 2. Taking input

# Single input
# read -p "Enter Name: " name
# echo "Entered Name is $name"

# Multiple inputs
# echo "Enter names: "
# read name1 name2 name3
# echo "Names : $name1, $name2, $name3"

# Non displaying input
# read -sp "Enter password: " pass
# echo
# echo "password: $pass"

# Array like input
# echo "Enter numbers: "
# read -a nums
# echo "Numbers: ${nums[0]}, ${nums[1]}"

# Bultin variable
# echo "Enter name: "
# read
# echo "Name -> $REPLY"

# 3. Arguments

# echo $0 $1 $2 $3 ' > echo $0 $1 $2 $3'

# args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}
# echo $@

# echo "Number of arguments = "$#

# 4. If Statement

# Integer Comparison:-
# -eg: Equal To
# -ne: is not equal to
# -gt: is greater than
# -ge: is greater than or equal to
# -lt: is less than
# -le: is less than or equal to

# String Comparison:-
# = : is equal to
# == : is equal to if
# !=: is not equal to
# < : is less than, in ASCII alphabetical order
# > : is greater than
# -z : string is null or has 0 length

# count=10
# if [ $count -gt 9 ]
# then
#     echo "condition is true"
# fi

# if (($count > 9))
# then
#     echo "condition is true"
# fi

# word=Siddarth
# if [ $word != "sidd" ]
# then echo "condition is true"
# fi

# if [[ $word < "a" ]]
# then echo "condition is true"
# fi

# if [[ $word = "S" ]]
# then "Equal to S"
#elif [[ $word = "A" ]]
# then echo "Equal to A"
# else echo "Equal to None"
# fi

# 5. Files
# echo -e "Enter the name of file : \c"
# read file_name

# if [ -e $file_name ] # -e is to check if the file exists, -f is to check if its a regular file
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi

# Directory
# echo -e "Enter the directory: \c"
# read dir_name

# if [[ -d $dir_name ]] # -d is used to find if the directory exists
# then echo "$dir_name found"
# else echo "$dir_name not found"
# fi

# Two types of files : Character type file uses -c and Block type file used -b flag
# -s is used to check if the file is empty
# -r is used to check if the file has read permission

# if [[ -s $file_name ]]
# then echo "$file_name is not empty"
# else echo "$file_name is empty"
# fi

# 6. Appending text to a file
echo -e "Enter the name of the file: \c"
read filename

if [ -f $filename ]
then
    if [ -w $filename ]
        then
            echo "Type some text. To quit press ctrl+D"
            cat >> $filename
        else
            echo "File do not have write permissions"
        fi
else
    echo "File does not exist"