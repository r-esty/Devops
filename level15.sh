#!/bin/bash

CONFIG_FILE="settings.conf"
SOURCE_DIR="Arena"
BACKUP_DIR="Backups"
BACKUP_LIMIT=3

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Function to check disk space
check_disk_space() {
    df -h
}

# Function to show system uptime
show_uptime() {
    uptime
}

# Function to backup Arena and keep the last 3 backups
backup_arena() {
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
    BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
    
    tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
    echo "Created backup: $BACKUP_NAME"
    
    # Remove older backups, keeping only the last 3
    cd "$BACKUP_DIR" || exit
    ls -t | sed -e "1,${BACKUP_LIMIT}d" | xargs -d '\n' rm -f
}

# Function to parse settings.conf
parse_config() {
    if [ ! -f "$CONFIG_FILE" ]; then
        echo "Configuration file not found!"
        return
    fi
    
    while IFS='=' read -r key value; do
        [[ -z "$key" || "$key" =~ ^# ]] && continue
        key=$(echo "$key" | xargs)
        value=$(echo "$value" | xargs)
        echo "Key: $key, Value: $value"
    done < "$CONFIG_FILE"
}

# Main menu
while true; do
    echo "Choose an option:"
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. Backup Arena directory (keep last 3 backups)"
    echo "4. Parse settings.conf and display values"
    echo "5. Exit"

    read -rp "Enter your choice [1-5]: " choice

    case $choice in
        1) check_disk_space ;;
        2) show_uptime ;;
        3) backup_arena ;;
        4) parse_config ;;
        5) echo "Exiting..."; break ;;
        *) echo "Invalid option, please try again." ;;
    esac
done
