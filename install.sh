#!/bin/bash

# Check if Homebrew is already installed
which -s brew

if [[ $? != 0 ]] ; then
    echo 'Installing Homebrew'
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Add Homebrew to PATH
   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
   N
else
  echo 'Homebrew already installed'
  
  which -s ansible
  if [[ $? != 0 ]] ; then

    echo 'Installing Ansible'
    
    brew install ansible
  else 
    echo 'Ansible already installed'
  fi
fi