# dotfiles

Dotfiles for my personalized system setup. This project is highly inspired by [Matthieu](https://thevaluable.dev/) and I really recommend his articles. I had a similar setup (Arch, Zsh and i3) and extended it with his recommendations. Now I improve the setup for my own needs.

- System (ArchLinux)
- [Window Manager (i3)](#window-manager-(i3))
- [Terminal Multiplexer (tmux)](#terminal-multiplexer-(tmux))
- [Shell (Zsh)](#shell-(zsh))
- [Editor (Neovim)](#editor-(neovim))

## [Window Manager (i3)](https://i3wm.org/docs/userguide.html)

Install i3, i3status and arandr.

```
pacman -S i3 i3status arandr
```

Configuration of i3 with i3status bar.

```
i3/i3.conf -> ~/.config/i3/config
i3/i3status.conf -> ~/.config/i3status/config
```

## [Terminal Multiplexer (tmux)](https://github.com/tmux/tmux)

Install tmux, tmuxp and fzf.

```
pacman -S tmux tmuxp fzf
```

Configuration of tmux with settings, keybindings and plugins.

```
tmux/tmux.conf -> ~/.tmux.conf
```

Sessions configuration for tmux can be done with [tmuxp](https://tmuxp.git-pull.com/) writing your session information to a yaml file in `~/.tmuxp/`.

## [Shell (Zsh)](https://www.zsh.org/)

Install zsh and oh-my-zsh.

```
pacman -S zsh
```
TODO: oh-my-zsh installation

Configuration of zsh and oh-my-zsh.

```
zsh/zshenv -> ~/.zshenv
zsh/zshrc -> ~/.zshrc
```

## [Editor (Neovim)](https://neovim.io/doc/)

Install neovim.

```
pacman -S neovim
```

Configuration of neovim.

```
nvim/init.vim -> ~/.config/nvim/init.vim
```
