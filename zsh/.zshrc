# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

### My Configs

## Preconfigs
# startx on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	command -v neofetch &> /dev/null && neofetch
	exec startx
fi

## Aliases
alias ls='ls --color=auto -F'
alias ll='ls -l'

## Prompts
# user@machine dir
PROMPT='
%F{1}%n%f@%F{4}%m%f %F{6}%B%~%b%f
%F{2}%#%f '

# error code if there was one
RPROMPT='%(?..[%?])'
