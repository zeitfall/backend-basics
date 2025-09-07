#!/bin/bash

# [04]: Exit Codes

package=htop

apt update && apt install $package >> package_install_result.log

if [ $? -eq 0 ]
then
    echo "The installation of \"$package\" package was successful."
    echo "The new command is available here: $(which $package)"
else
    echo "Package \"$package\" is failed to install."  >> package_install_failure.log
fi
