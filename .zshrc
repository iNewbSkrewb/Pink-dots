autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

HISTFILE=~/.zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep

# Aliases
alias ls="ls --color=yes"
alias grep="grep --color=yes"
alias l="ls -al"
alias v="nvim"
alias w="sh /home/samienr/scripts/.fehbg"
alias fonts="fc-list | less"
alias pfetch="PF_INFO='ascii title os uptime shell wm pkgs memory palette' pfetch"
alias dots="/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME"

# Add PATH to pip files
PATH=/home/samienr/.local/bin:$PATH

export EDITOR=nvim

# Enable Vi Mode
bindkey -e

#Fix home and end keys
bindkey "^[[3~" delete-char
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line

#Fun stuff
GITSTATUS_LOG_LEVEL=DEBUG
umask 022
