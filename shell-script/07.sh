#!/bin/bash

# [07]: For Loops

# for num in {1..10}; do
#     echo $num

#     if [ $num -ge 5 ]; then
#         continue
#     fi

#     echo "I was less than 5"
# done

# echo "This is outside of the for loop."



rm -rf logs && mkdir logs && cp /var/log/*.log /logs

for file in logs/*.log; do
    # c - create a new archive
    # z - uses gzip to zip it
    # v - verbose mode to see progress of compression
    # f says the next argument will be a file
    tar -czvf $file.tar.gz $file
done
