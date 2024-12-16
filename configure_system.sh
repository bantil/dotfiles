#!/bin/bash

OS_TYPE=$(uname);
USERNAME=$(whoami)

# sets the RTC time to 1 to avoid inaccurate time when dual booting
set_rtc_time() {
    if [[ "$OS_TYPE" == "Linux" ]]; then
        # Print message before running the command
        echo "Setting local RTC to 1..."

        # Run the command with sudo and store the exit code in a variable
        sudo timedatectl set-local-rtc 1
        exit_code=$?

        # Check the exit code to determine if the command ran successfully
        if [ $exit_code -eq 0 ]; then
            echo "Local RTC set to 1 successfully."
        else
            echo "Error: Failed to set local RTC to 1. Exit code: $exit_code"
        fi
    fi
}

# copy over the correct dotfiles depending on the operating system we're running
set_correct_dotfiles() {
    if [[ "$OS_TYPE" == "Darwin" ]]; then
        rm -f ~/.zshrc && cp zsh/zshrc.mac zsh/.zshrc
    elif [[ "$OS_TYPE" == "Linux" ]]; then
        rm -f ~/.zshrc && cp zsh/zshrc.linux zsh/.zshrc
    fi

    echo "Dotfiles set according to OS."
}

set_rtc_time

#######
# run the command to install zshrc

echo "Installing oh my zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

set_correct_dotfiles

# install homebrew and dependencies
if [[ "$OS_TYPE" == "Darwin" ]]; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USERNAME/.zprofile
fi

echo "All dependencies installed! Changing shell for the final step..."