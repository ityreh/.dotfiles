#!/bin/zsh

##########
# system #
##########

# For dotfiles
export DOTFILES="$HOME/.dotfiles"
export XDG_CONFIG_HOME="$HOME/.config"
# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

#########
# shell #
#########

# zsh

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="~/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# oh-my-zsh

export ZSH="/home/main/.oh-my-zsh"
export ZSH_THEME="robbyrussell"

##################
# window manager #
##################


########################
# Terminal Multiplexer #
########################

# tmux
export DISABLE_AUTO_TITLE='true'

##########
# editor #
##########

# neovim

export EDITOR="nvim"
export VISUAL="nvim"

#############
# languages #
#############

# java

export JAVA_HOME=/usr/lib/jvm/default
export JDK_HOME=/usr/lib/jvm/default

### python ###

# virtualenvwrapper

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# node
export PATH=$HOME/.node_modules_global/bin:$PATH

# latex
export TEXMFDIST=/usr/share/texmf-dist

