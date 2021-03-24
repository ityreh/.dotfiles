" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard+=unnamedplus
set hidden

" show line numbers
set number

" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo
set undolevels=10000

" Plugins (vim-plug: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" coc-extensions
" (https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions)
let g:coc_global_extensions = [
	\ "coc-html",
	\ "coc-css",
	\ "coc-json",
	\ "coc-yaml",
	\ "coc-tsserver",
\]
