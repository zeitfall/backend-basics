#!/bin/bash

# [03]: If Statements

num=101

# Equals
if [ $num -eq 100 ]
then
    echo "[1] This condition is truthy."
else
    echo "[1] This condition is falsy."
fi

# Not Equals
if [ ! $num -eq 100 ] # or if [ $num -ne 100 ]
then
    echo "[2] This condition is truthy."
else
    echo "[2] This condition is falsy."
fi

# Greater
if [ $num -gt 100 ]
then
    echo "[3] This condition is truthy."
else
    echo "[3] This condition is falsy."
fi



if [ -f ./myfile ]
then
    rm ./myfile
fi

if [ -f ./myfile ]
then
    echo "The file exists"
else
    echo "The file does not exist"
fi

touch ./myfile

if [ -f ./myfile ]
then
    echo "The file exists"
else
    echo "The file does not exist"
fi

if [ -d /unknown ]
then
    echo "The directory exists"
else
    echo "The directory does not exist"
fi

if [ -d /bin ]
then
    echo "The directory exists"
else
    echo "The directory does not exist"
fi



package=node
command=$(command -v $package)

if $command
then
    echo "$package is already installed"
else
    echo "$package is not installed. Trying to install it..."
    apt update && apt install -y $package
fi

$command