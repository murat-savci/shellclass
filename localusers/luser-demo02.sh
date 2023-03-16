#!/bin/bash

# Display the UID (user identification number) 
# and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID
echo "1. Your UID is ${UID}"

# Display 
USER_NAME=$(id -un)
echo "2. your username is $USER_NAME"
echo "again"
echo "3. Your username is ${USER_NAME}"

USER_NAME2=`id -un` # older style 
echo "different wring style in code"
echo "4. Your username is ${USER_NAME2}"

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
    echo 'You are root.'
else
    echo 'You are not root'
fi