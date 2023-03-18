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

echo "Welcome $name ${newline}Today is $_date ${newline}Your username is $_username${newline}You are in $_cdir." 
sleep 2
echo "Good morning ${name}!"
sleep 1
echo "You are looking good today $name"
sleep 1
echo "You have the best $compliment I've ever seen ${name}"
sleep 1
echo "Done!"

