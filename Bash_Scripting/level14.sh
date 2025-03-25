# Mission: Create an interactive script that presents a menu with options for different system tasks  
# (e.g., check disk space, show system uptime, list users), and executes the chosen task.


#!/bin/bash

while true; do
    echo "============================"
    echo "       System Menu          "
    echo "============================"
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. List users"
    echo "4. Exit"
    
    read -rp "Enter your choice [1-4]: " choice

    case $choice in
        1) 
            echo "Disk Space Usage:"
            df -h
            ;;
        2) 
            echo "System Uptime:"
            uptime
            ;;
        3) 
            echo "Users:"
            cut -d: -f1 /etc/passwd
            ;;
        4) 
            echo "Goodbye!"
            exit 0
            ;;
        *) 
            echo "Invalid option. Please enter a number between 1 and 4."
            ;;
    esac

    read -rp "Press Enter to continue..."
    clear
done
