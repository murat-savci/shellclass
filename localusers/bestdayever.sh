#!/bin/bash
# This script will recognise the user logged in and greet him/her with name

# Create a variable with user's name
myname="Murat"
my_username="savcimu" 

# Get username logged in
# USERNAME and USER variables hold current user name but it is not user's real name, 
# it is the name of current account you logged in.

USER_NAME=$(id -un)

if [[ $USER_NAME -eq $my_username ]]
then
    echo 'Good morning $myname'
else
    echo 'Good morning ${USERNAME}'
fi