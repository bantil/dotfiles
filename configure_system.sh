#!/bin/bash

# run the command to install zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Print message before running the command
echo "Setting local RTC to 1..."

# Run the command with sudo and store the exit code in a variable
sudo timedatectl set-local-rtc 1
exit_code=$?

# Check the exit code to determine if the command ran successfully
if [ $exit_code -eq 0 ]; then
    echo "Command ran successfully: local RTC set to 1."
else
    echo "Error: Failed to set local RTC to 1. Exit code: $exit_code"
fi

# Print message after running the command
echo "Command execution completed."