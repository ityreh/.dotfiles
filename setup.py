#!/usr/bin/env python

import argparse
from os.path import dirname, join
from pathlib import Path
from shutil import copy

source_dir = dirname(__file__)
home_dir = str(Path.home())


def cFrom(source):
    """Return absolute path to source (has to be in dotfile project directory)"""
    return join(source_dir, source)


def cTo(target):
    """Return absolute path to target (has to be in home directory)"""
    return join(home_dir, target)


def setup_feh():
    """setup feh"""
    copy(cFrom("feh/fehbg"), cTo(".fehbg"))
    print("Setup feh done")


def setup_X11():
    """setup X11"""
    copy(cFrom("X11/xinitrc"), cTo(".xinitrc"))
    print("Setup X11 done")


def setup_i3():
    """setup window manager i3"""
    copy(cFrom("i3/i3.conf"), cTo(".config/i3/config"))
    copy(cFrom("i3/i3status.conf"), cTo(".config/i3status/config"))
    print("Setup i3 done")


def setup_tmux():
    """setup terminal multiplexer tmux"""
    copy(cFrom("tmux/tmux.conf"), cTo(".tmux.conf"))
    print("Setup tmux done")


def setup_zsh():
    """setup shell zsh"""
    copy(cFrom("zsh/zshenv"), cTo(".zshenv"))
    copy(cFrom("zsh/zshrc"), cTo(".zshrc"))
    print("Setup zsh done")


def setup_neovim():
    """setup editor neovim"""
    copy(cFrom("nvim/init.vim"), cTo(".config/nvim/init.vim"))
    print("Setup nvim done")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Setup dotfiles for your system")

    parser.add_argument("all", nargs=None, help="setup all components")

    args = parser.parse_args()

    if args.all:
        setup_feh()
        setup_X11()
        setup_i3()
        setup_tmux()
        setup_zsh()
        setup_neovim()
    else:
        parser.print_usage()
