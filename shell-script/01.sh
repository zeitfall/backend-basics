#!/bin/bash

# [01]: Variables

name="Vladyslav"
lastname="Matsko"
age=22

echo "Hello, my name is $name $lastname. I'm $age years old."

cwd_structure=$(ls)

echo "Structure of the current working directory:"
echo $cwd_structure

csh_content=$(cat 01.sh)

echo "Contents of the current script:"
echo $csh_content

c_date=$(date)

echo "The system time and date is: $c_date"