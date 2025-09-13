#!/bin/bash

# [06]: "Update Script"

release_file=/etc/os-release

if grep -q "Arch" $release_file; then
    pacman -Syu
fi

if grep -q "Ubuntu" $release_file; then
    apt update
    apt dist-upgrade
fi
