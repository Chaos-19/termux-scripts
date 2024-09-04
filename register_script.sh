#!/bin/bash

# Check if an argument was provided
if [[ -n "$1" ]]; then

    # Resolve the full path of the script
    script_path=$(realpath "$1")

    # Check if the file exists
    if [[ -e "$script_path" ]]; then
        echo "File exists at $script_path!"

        # Get the directory of the script
        script_dir=$(dirname "$script_path")

        # Append the directory to .bashrc if not already added
        if ! grep -q "$script_dir" ~/.bashrc; then
            echo "Adding $script_dir to PATH..."
            echo "export PATH=\"$script_dir:\$PATH\"" >> ~/.bashrc
            source ~/.bashrc
        else
            echo "$script_dir is already in your PATH."
        fi

        # Make the script executable
        chmod +x "$script_path"
        echo "Script is now executable and globally accessible."

    else
        echo "Invalid path: The file doesn't exist!"
    fi
else
    echo "Please provide the script file path!"
fi
