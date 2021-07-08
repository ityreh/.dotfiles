#!/bin/bash

#######
# X11 #
#######
mkdir -p $XDG_CONFIG_HOME/X11

ln -sf "$DOTFILES/X11/.Xresources" "$XDG_CONFIG_HOME/X11/.Xresources"
ln -sf "$DOTFILES/X11/.xinitrc" "$XDG_CONFIG_HOME/X11/.xinitrc"
#ln -sf $DOTFILES/X11/.Xmodmap $XDG_CONFIG_HOME/X11/.Xmodmap

#######
# feh #
#######
ln -sf "$DOTFILES/feh/.fehbg" "$HOME/.fehbg"

######
# i3 #
######
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"
#TODO: i3status

#######
# zsh #
#######
mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/.zshrc" "$ZDOTDIR/.zshrc"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh/external"

########
# nvim #
########
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"
