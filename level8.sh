#!/bin/bash

specific_word() {
    echo "What is your word or phrase you are looking for?"
    read word

    if [ -z "$word" ]; then
        echo "Enter a word or phrase"
        exit 1
    fi

    # Check if any .log files exist
    if ! ls *.log >/dev/null 2>&1; then
        echo "No log files found."
        exit 1
    fi

    # Search for the word in .log files
    if grep -H "$word" *.log; then
        echo "Search complete."
    else
        echo "No matches found."
    fi
}

specific_word
