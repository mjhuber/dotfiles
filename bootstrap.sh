#!/usr/bin/env bash

set -e

#git pull origin master;

if [ -f "Brewfile" ] && [ "$(uname -s)" = "Darwin" ]; then
  # Are Xcode CLI tools installed?
  xcode-select -p &> /dev/null || {
    echo "==> Installing Xcode CLI tools…"
    xcode-select --install
    sudo xcodebuild -license
  }

  # Is homebrew installed?
  which brew &> /dev/null || {
    echo "==> Installing homebrew…"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  }

  brew update


  brew bundle check >/dev/null 2>&1  || {
    echo "==> Installing Homebrew dependencies…"
    brew bundle || true
  }

fi

stow -R bash git other vim zsh
source ~/.zshrc

count=$(apm list --installed --packages --bare | grep -s sync-settings)
if [[ $count != 0 ]]; then
    echo "==> Installing atom sync-settings…"
    apm install sync-settings
fi

echo "==> Ready to go!"
