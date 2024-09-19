Automated setup of a new mac

Prerequisites
    `zsh install.sh` - to install homebrew and ansible

Available flags:

- personal - install full setup for personal computer
- work - install full setup for work computer
- appstore
- apps
- asdf
- chrome-extensions
- dotfiles
- git-personal
- git-work
- macOS
- npm-packages
- ssh
- vs-extensions
- zsh-setup

Example command `ansible-playbook --tags "work" ~/ansible/local.yml -vvv`

TODO:

- ssh config not setup
