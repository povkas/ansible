Prerequisites
    `zsh install.sh` - to install homebrew and ansible

Available flags:
    personal - install full setup for personal computer
    work - install full setup for work computer

Example command `ansible-playbook --tags "work" local.yml -vvv`

TODO:

* ssh config not setup
* nvm setup not complete (node needs to be installed by hand)
* chrome extensions script not working
* powerlevel config needs configuring