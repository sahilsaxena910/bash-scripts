#!/bin/bash

source /home/ec2-user/my-scripts/functions.sh

while true
do
        read -p $'Enter 1 for Pretty Print of a file \nEnter 2 for Menu \nEnter q for quit:   ' USER_INPUT

        case $USER_INPUT in
                1)
                        PrettyPrint
                        ;;
                2)
                        Menu
                        ;;
                [qQ] | [qQ][uU][iI][tT])
                        exit;
                        ;;
                *)
                        echo "Invalid option"
                        ;;
        esac
done