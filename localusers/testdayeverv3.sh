#!/bin/bash

# positional parameters
name=$1
compliment=$2

# variables
_username=$(whoami)
_date=$(date)
_cdir=$(pwd)
newline=$'\n'

# echo $_username
# echo $_date
# echo $_cdir

clear
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
