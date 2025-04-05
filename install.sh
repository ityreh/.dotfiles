#!/bin/bash

#######
# X11 #
#######
mkdir -p $XDG_CONFIG_HOME/X11
ln -sf $DOTFILES/X11/.Xresources $XDG_CONFIG_HOME/X11
ln -sf $DOTFILES/X11/.xinitrc $XDG_CONFIG_HOME/X11
#ln -sf $DOTFILES/X11/.Xmodmap $XDG_CONFIG_HOME/X11/.Xmodmap

#######
# feh #
#######
ln -sf $DOTFILES/feh/.fehbg $HOME

######
# i3 #
######
mkdir -p $XDG_CONFIG_HOME/i3
mkdir -p $XDG_CONFIG_HOME/i3status
ln -sf $DOTFILES/i3/config $XDG_CONFIG_HOME/i3
ln -sf $DOTFILES/i3/scripts $XDG_CONFIG_HOME/i3
ln -sf $DOTFILES/i3/i3status.conf $XDG_CONFIG_HOME/i3status/config

#######
# zsh #
#######
mkdir -p $XDG_CONFIG_HOME/zsh
ln -sf $DOTFILES/zsh/.zshenv $HOME
ln -sf $DOTFILES/zsh/.zshrc $ZDOTDIR

rm -rf $XDG_CONFIG_HOME/zsh/external
ln -sf $DOTFILES/zsh/external $XDG_CONFIG_HOME/zsh/external

#########
# Fonts #
#########
#TODO: delete and set fonts for wayland
#mkdir -p $XDG_DATA_HOME
#cp -rf $DOTFILES/fonts $XDG_DATA_HOME

#########
# dunst #
#########
mkdir -p $XDG_CONFIG_HOME/dunst
ln -sf $DOTFILES/dunst/dunstrc $XDG_CONFIG_HOME/dunst/dunstrc

########
# nvim #
########
mkdir -p $XDG_CONFIG_HOME/nvim
mkdir -p $XDG_CONFIG_HOME/nvim/undo
ln -sf $DOTFILES/nvim/init.vim $XDG_CONFIG_HOME/nvim

# install neovim plugin manager
[ ! -f $DOTFILES/nvim/autoload/plug.vim ] \
    && curl -fLo $DOTFILES/nvim/autoload/plug.vim --create -dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $XDG_CONFIG_HOME/nvim/autoload
ln -sf $DOTFILES/nvim/autoload/plug.vim $XDG_CONFIG_HOME/nvim/autoload/plug.vim

# Install (or update) all the plugins
nvim --noplugin +PlugUpdate +qa

########
# tmux #
########
mkdir -p $XDG_CONFIG_HOME/tmux
ln -sf $DOTFILES/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

# install tmux plugin manager
[ ! -d $XDG_CONFIG_HOME/tmux/plugins/tpm ] \
    && git clone https://github.com/tmux-plugins/tpm \
    $XDG_CONFIG_HOME/tmux/plugins/tpm
