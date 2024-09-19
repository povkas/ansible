#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles yes && killall Finder

defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

defaults write com.apple.finder AppleShowAllFiles YES

defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder

defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder

defaults write com.apple.dock "autohide" -bool "true" && killall Dock

defaults write com.apple.dock "autohide-time-modifier" -float "0" && killall Dock

defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock

defaults write com.apple.dock "tilesize" -int "39" && killall Dock

defaults write com.apple.dock "mineffect" -string "scale" && killall Dock

defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock

defaults write -g ApplePressAndHoldEnabled -bool "false"

defaults write com.apple.desktopservices DSDontWriteNetworkStores "true"

defaults write com.apple.dock workspaces-swoosh-animation-off -bool YES && killall Dock

defaults write NSGlobalDomain InitialKeyRepeat -int 12

defaults write NSGlobalDomain KeyRepeat -int 2

defaults write com.apple.dock no-bouncing -bool TRUE
