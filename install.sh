#!/bin/bash

# Check if Homebrew is already installed
if test ! $(which brew); then
    echo 'Installing Homebrew'
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Add Homebrew to PATH
#   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.bash_profile
#   eval "$(/opt/homebrew/bin/brew shellenv)" 
else
  echo 'Homebrew already installed'

  if test ! $(which ansible); then

    echo 'Installing Ansible'
    
    brew install ansible
  else 
    echo 'Ansible already installed'
  fi
fi