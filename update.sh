#!/usr/bin/env bash

# Software Update Tool
echo "Upgrade Mac OS X"
softwareupdate -i -a

# Homebrew
echo "Upgrading Homebrew"
brew update
brew upgrade