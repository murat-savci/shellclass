#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is savcimu user or not.

# Important Note:
# ===============
# In Bash, -eq is used for numeric comparison, 
# while == is used for string comparison. 
# Using -eq for string comparison will result in an error.

# user_id=$(id -u)
user_id=$UID
UID_TO_TEST_FOR="1000"


# Only display if the UID does NOT match 1000.
if [[ ${UID} -ne $UID_TO_TEST_FOR ]]
then
    echo "Your UID does not match ${UID_TO_TEST_FOR}."
    sleep 1
    echo "Your UID is ${UID}."
    exit 1
else
    echo "Your UID is $UID"
fi

# Display username
USER_NAME=$(id -un)

# Test if the command succeeded.
if [[ "${?}" -ne 0 ]]
then
    echo "The id command did not execute successfully."
    exit 1
fi
echo "Your username is $USER_NAME"

