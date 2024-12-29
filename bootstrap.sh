#!/usr/bin/env bash

set -e

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

curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
atuin login -u huberm
atuin import zsh
echo "==> Ready to go!"
