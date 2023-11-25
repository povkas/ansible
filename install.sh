#!/bin/bash

# Check if Homebrew is already installed
which -s brew

if [[ $? != 0 ]] ; then

    if ! which xcodebuild >/dev/null; then
        echo 'Installing xcode'

        xcode-select --install
    fi

    echo 'Installing Homebrew'

    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

    # Add Homebrew to PATH
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile

    installAnsible
else
    echo 'Homebrew already installed'

    installAnsible
fi

installAnsible() {
    which -s ansible
    if [[ $? != 0 ]] ; then
        echo 'Installing Ansible'

        brew install ansible
    else 
        echo 'Ansible already installed'
    fi
}
