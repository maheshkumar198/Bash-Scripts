#!/bin/bash
echo "Checking linux is debian based or redhat based"

#TYPE=$(cat /etc/os-release | grep -i ID_LIKE | cut -d= -f2) #This is another way to get the value of ID_LIKE, but using source is more efficient and cleaner.
source /etc/os-release
TYPE=$ID_LIKE

if [[ $TYPE == *"debian"* ]]; then
    echo "Linux is debian based"
    echo "Installing app using apt"
    sudo apt update
    sudo apt install -y git

elif [[ $TYPE == *"rhel"* ]]; then
    echo "Linux is redhat based"
    echo "Installing app using yum"
    sudo yum update -y
    sudo yum install -y git

else
    echo "Unsupported Linux distribution"
    
fi