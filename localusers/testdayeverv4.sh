#!/bin/bash

# This code checks the optional paramaters name and compliment
# if they exist then some info is printed.

# Let's check if the account is admin or not.

# positional parameters
name=$1
compliment=$2

# variables
_username=$(whoami)
_date=$(date)
_cdir=$(pwd)
newline=$'\n'
_account_id=$(id -u)
_account=$(id -un)

# echo $_username
# echo $_date
# echo $_cdir

clear

if [[ $_account_id -eq 0 ]]
then
    echo "This is root account"
    sleep 1
    echo "Welcome root!"
else
    echo "Welcome ${_account}"
fi

if [[ $# -eq 0 ]]
then
    echo "No arguments supplied"
    sleep 1
    echo "you need to add name and compliment parameters!"
else
    echo "Positional parameters have been set"
    sleep 1
    echo "Processing..."
    sleep 2  
    echo "Welcome $name ${newline}Today is $_date ${newline}Your username is $_username${newline}You are in $_cdir." 
    sleep 2
    echo "Good morning ${name}!"
    sleep 1
    echo "You are looking good today $name"
    sleep 1
    echo "You have the best $compliment I've ever seen ${name}"
    sleep 1
    echo "Done!"
fi
