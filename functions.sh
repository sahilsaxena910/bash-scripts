#!/bin/bash

source /home/ec2-user/my-scripts/variables.sh

function PrettyPrint() {
read -p "Enter path of file for pretty print: " PATH_TO_FILE
read -p "How many lines would you like to read? " INPUT
cat $PATH_TO_FILE | while read LINE
do
        echo "${LINE_NUMBER}: ${LINE}"
        if [ $LINE_NUMBER -eq $INPUT ]
        then
                break;
        else
                ((LINE_NUMBER++))
        fi
done
}

function Menu() {
while true
do
        read -p $'Enter 1. Disk Usage \nEnter 2. uptime \nEnter 3. Display logged in users \nEnter 4. Enter q to quit: ' OPTIONS

        case $OPTIONS in
                1)
                        df -h
                        ;;
                2)
                        uptime
                        ;;
                3)
                        who
                        ;;
                "q")
                        exit;
                        ;;
                *)
                        echo "Invalid option"
                        ;;
        esac
done
}