" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard+=unnamedplus
set hidden

" no swap file
set noswapfile

" show line numbers
set number

" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" use 4 spaces instead of tab
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Plugins (vim-plug: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
call plug#begin('~/.config/nvim/plugged')

Plug 'chrisbra/csv.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"csv plugin
autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

" coc plugin extensions
" (https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions)
let g:coc_global_extensions = [
	\ "coc-html",
	\ "coc-css",
	\ "coc-json",
	\ "coc-yaml",
	\ "coc-tsserver",
\]
