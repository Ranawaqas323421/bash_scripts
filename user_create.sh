#!/bin/bash

for i in {1..6}
do

    read -p "enter user name " user_name
    sudo useradd -m $user_name
    echo "user $user_name add successfuly"
done
