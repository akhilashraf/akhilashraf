#!/bin/bash

echo "Enter the file name:"
read f

if [ ! -e "$f" ]; then
    echo "File does not exist."
    exit 1
fi

echo "Do you want to convert contents to uppercase or lowercase? (u/l)"
read choice

if [ "$choice" = "u" ]; then
    echo "Converting contents of '$f' to uppercase:"
    tr '[:lower:]' '[:upper:]' < "$f"
elif [ "$choice" = "l" ]; then
    echo "Converting contents of '$f' to lowercase:"
    tr '[:upper:]' '[:lower:]' < "$f"
else
    echo "Invalid choice. Please enter 'u' for uppercase or 'l' for lowercase."
    exit 1
fi
