#!/bin/bash

# Path to the script inside the tests directory
SCRIPT_PATH="scripts/process_tracker.sh"

# Check if the script exists
if [ ! -f "$SCRIPT_PATH" ]; then
    echo "Error: Script $SCRIPT_PATH does not exist."
    exit 1
fi

# Check if the script has executable permissions, if not, add them
if [ ! -x "$SCRIPT_PATH" ]; then
    echo "Adding executable permissions to $SCRIPT_PATH..."
    chmod +x "$SCRIPT_PATH"
fi

# Source the script to execute it in the current shell session
echo "Sourcing $SCRIPT_PATH..."
if ! bash "$SCRIPT_PATH"; then
    echo "Error: Failed to execute $SCRIPT_PATH."
    exit 1
fi

# Check the exit status of the script
if [ $? -eq 0 ]; then
    echo "Script sourced and executed successfully!"
else
    echo "Script encountered an error during execution."
fi