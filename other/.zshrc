# If you come from bash you might have to change your $PATH.
export PATH="$HOME/Library/Python/2.7/bin:$HOME/bin:$PATH"

source ~/.pentagon/config

# Path to your oh-my-zsh installation.
export ZSH="/Users/huberm/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# antigen bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

export LANG='en_US.UTF-8'
export EDITOR='nvim'




# aliases
alias gh='history | grep'
alias grep='grep -i'
alias k='kubectl'
alias ls='ls -G'
alias pw='/usr/local/bin/pentagon_workon'
alias tf='terraform'
alias wgdown='wg-quick down azirevpn-us1'
alias wgup='wg-quick up azirevpn-us1'
alias vim='nvim'

# Tell antigen that you're done.
antigen apply
