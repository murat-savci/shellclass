#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is savcimu user or not.

# Important Note:
# In Bash, -eq is used for numeric comparison, while == is used for string comparison. 
# Using -eq for string comparison will result in an error.

user_id=$(id -u)
username=$(id -un)

# Display username
echo "Hello your username is $username"
sleep 1
echo "Your user ID is $user_id" 

if [[ $username == "savcimu" ]]
then
    echo "it is savcimu account!"
elif [[ $username == "root" ]]
then
    echo "it is root account"
else
    echo "it is another acount"
fi

# Test
# echo "${user_id}"
# echo "$username"sudo pass