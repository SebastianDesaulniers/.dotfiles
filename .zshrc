# Aliases file
# colors
autoload -U colors && colors

# Enable changing directories without cd
setopt autocd

# Enable autocompletion
zmodload zsh/complist
_comp_options+=(globdots)

# Enable it for sudo commands
# vim mode
bindkey -v
# vim keybinds for menu selection
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


# Enable history 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt share_history

# Set the prompt, very minimal
PROMPT="%F{gray}%~ %F{white}"

export SHELL=/usr/bin/zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit 
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion::complete:*' gain-privileges 1

zstyle ':completion:*' menu select

source ~/.config/globals
source ~/.config/aliases

