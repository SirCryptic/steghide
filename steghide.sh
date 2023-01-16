#!/bin/bash
##############################
##        STEGHIDE          ##
##############################
##  Created By Sir Cryptic  ##
############################## 
##       Greetz Mobly       ##
##       Greetz R!ff        ##
##       Greetz Double A    ##
##       Greetz lucci       ##
##############################
# Function to hide a file in an image
hide_file() {
    # Get the file name, image file and password from the user
    read -p "Enter the file name to hide: " file
    read -p "Enter the image file name: " image
    read -p "Enter a password to encrypt the hidden file: " password
    
    # Hide the file in the image using steghide
    steghide embed -cf "$image" -ef "$file" -p "$password"
    echo "File successfully hidden in the image!"
}

# Function to extract a hidden file from an image
extract_file() {
    # Get the image file name and password from the user
    read -p "Enter the image file name: " image
    read -p "Enter the password used to encrypt the hidden file: " password
    
    # Extract the hidden file from the image using steghide
    steghide extract -sf "$image" -p "$password"
    echo "File successfully extracted from the image!"
}

# Main menu function
main_menu() {
    echo "Main Menu:"
    echo "1. Hide a file in an image"
    echo "2. Extract a hidden file from an image"
    echo "3. Exit"
    read -p "Enter your choice: " choice
    case "$choice" in
    1)
        hide_file
        ;;
    2)
        extract_file
        ;;
    3)
        exit
        ;;
    *)
        echo "Invalid choice."
        ;;
    esac
}

main_menu
