" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard+=unnamedplus
set hidden

" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo
set undolevels=10000

" Plugins (vim-plug: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
call plug#begin('~/.config/nvim/plugged')



call plug#end()
