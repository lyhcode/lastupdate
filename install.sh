#!/usr/bin/env bash

# Setup script for setting up a new macos machine
echo "Starting lastupdate"

## Setup /etc/sudoers for sudo without password prompt
echo "Setup NOPASSWD for %staff"
sudo grep -q '^%staff' /etc/sudoers || sudo sed -i '' 's/^%admin.*/&\n%staff          ALL = (ALL) NOPASSWD: ALL/' /etc/sudoers

## Command Line Tools for Xcode
# echo "Install command line developer tools"
# xcode-select --install
# xcode-select -p &> /dev/null
# if [ $? -ne 0 ]; then
#   echo "Xcode CLI tools not found. Installing them..."
#   touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
#   PROD=$(softwareupdate -l |
#     grep "\*.*Command Line" |
#     head -n 1 | awk -F"*" '{print $2}' |
#     sed -e 's/^ *//' |
#     tr -d '\n')
#   softwareupdate -i "$PROD" -v;
# else
#   echo "Xcode CLI tools OK"
# fi

## Homebrew
echo "Install Homebrew"
CI=1; /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## git
brew install git
git config --global user.email "kyle@trunk-studio.com"
git config --global user.name "Kyle"

## Programmer's choice
brew install htop tmux

## Visual Studio Code
brew install visual-studio-code

## mas-cli
## A simple command line interface for the Mac App Store. Designed for scripting and automation.
brew install mas

# Google Chrome
brew install google-chrome

# Line
mas install 539883307

# Spotify
brew install spotify spotify-now-playing

# Notion
brew install notion

# Microsoft Remote Desktop
brew install microsoft-remote-desktop

# TeamViewer
brew install teamviewer

# AnyDesk
brew install anydesk

## Zoom, Slack
brew install zoom slack

## Sketch, Figma
brew install sketch

## Keka
brew install keka

## OpenVPN Connect
brew install openvpn-connect

## VirtualBox
brew install virtualbox virtualbox-extension-pack

# Docker, Vagrant
brew install docker vagrant

## Speedtest CLI
brew tap teamookla/speedtest
brew update
brew install speedtest --force

## 1Password
brew install 1password 1password-cli

## unetbootin
## brew install unetbootin

## VLC
brew install vlc

## Node.js
brew install fnm