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
source ~/.bash_profile


if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "==> Installing vim bundles…"
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
fi

count=$(apm list --installed --packages --bare | grep -s sync-settings)
if [[ $count != 0 ]]; then
    echo "==> Installing atom sync-settings…"
    apm install sync-settings
    # TODO: setup initial sync config via _private variables?
fi


echo "==> Ready to go!"
