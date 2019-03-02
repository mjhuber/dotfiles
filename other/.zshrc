
#exports
export PATH="$HOME/Library/Python/2.7/bin:$HOME/bin:$PATH"
export ZSH="/Users/huberm/.oh-my-zsh"
export LANG='en_US.UTF-8'
export EDITOR='nvim'

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# antigen bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting


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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/huberm/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/huberm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/huberm/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/huberm/google-cloud-sdk/completion.zsh.inc'; fi
