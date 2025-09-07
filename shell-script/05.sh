#!/bin/bash

# [05]: While Loop

# counter=0

# while [ $counter -le 10 ]; do
#     echo $counter

#     counter=$(($counter + 1))

#     sleep 0.125
# done

file=testfile

while [ -e ./$file ]; do
    echo "[$(date)] File \"$file\" exists."

    sleep 1
done

echo "[$(date)] File \"$file\" no longer exists. Exiting..."