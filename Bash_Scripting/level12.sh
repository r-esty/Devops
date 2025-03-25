# Mission: Write a script that reads a configuration file in the format KEY=VALUE  
# and prints each key-value pair.


#!/bin/bash

CONFIG_FILE="config.txt"

if [ ! -f "$CONFIG_FILE" ]
then
echo "This file does not exist"
exit 1
fi


while IFS='=' read -r key value; do
     [[ -z "$key" || "$key" =~ ^# ]] && continue
     
    key=$(echo "$key" | xargs)
    value=$(echo "$value" | xargs)

    echo "Key: $key, Value: $value"
done < "$CONFIG_FILE"
