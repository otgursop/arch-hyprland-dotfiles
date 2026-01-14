# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# ZSH path
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="eastwood"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

#####################
# ALIASES
#####################

alias ls="lsd"
alias cd="z"
alias cat="bat"

#####################
### SETTINGS
#####################

eval "$(zoxide init zsh)"

#####################
### PLUGINS (from pacman)
#####################

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#####################
### OTHER
#####################

# Nothing yet
