autoload colors
colors

#exports
export PATH="$HOME/Library/Python/2.7/bin:$HOME/bin:$PATH"
export ZSH="/Users/huberm/.oh-my-zsh"
export LANG='en_US.UTF-8'
export EDITOR='nvim'
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters


ZSH_THEME="huberm"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"

# oh-my-zsh plugins
plugins=(git aws docker kubectl pip helm terraform)
source $ZSH/oh-my-zsh.sh

# activate syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
alias brews='brew leaves'
alias aliases='print -rl -- ${(k)aliases} | sort | column'

# use a cache for completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/huberm/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/huberm/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/huberm/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/huberm/google-cloud-sdk/completion.zsh.inc'; fi
