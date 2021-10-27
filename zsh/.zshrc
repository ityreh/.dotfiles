#!/bin/zsh

##########
# prompt #
##########

fpath=($DOTFILES/zsh $fpath)
autoload -Uz prompt_purification_setup && prompt_purification_setup

#############
# languages #
#############

# python
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# ruby
eval "$(rbenv init -)"

###########
# aliases #
###########

source $DOTFILES/zsh/aliases

##############
# completion #
##############

autoload -Uz compinit
compinit
_comp_options+=(globdots)
source ~/.dotfiles/zsh/external/completion.zsh
fpath=($ZDOTDIR/external $fpath)

##############
# navigation #
##############

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

source ~/.dotfiles/zsh/external/bd.zsh

##################
# custom scripts #
##################

source $DOTFILES/zsh/scripts.zsh

################
# fuzzy search #
################

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

###########
# vi mode #
###########

bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

##########
# cursor #
##########

cursor_mode() {
    # See https://ttssh2.osdn.jp/manual/4/en/usage/tips/vim.html for cursor shapes
    cursor_block='\e[2 q'
    cursor_beam='\e[6 q'

    function zle-keymap-select {
        if [[ ${KEYMAP} == vicmd ]] ||
            [[ $1 = 'block' ]]; then
            echo -ne $cursor_block
        elif [[ ${KEYMAP} == main ]] ||
            [[ ${KEYMAP} == viins ]] ||
            [[ ${KEYMAP} = '' ]] ||
            [[ $1 = 'beam' ]]; then
            echo -ne $cursor_beam
        fi
    }

    zle-line-init() {
        echo -ne $cursor_beam
    }

    zle -N zle-keymap-select
    zle -N zle-line-init
}

cursor_mode

##################
# start X Server #
##################

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

#######################
# syntax highlighting #
#######################

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
