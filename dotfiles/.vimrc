" Vundle config
set nocp
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'derekwyatt/vim-scala'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'saltstack/salt-vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-sleuth'
Plugin 'plasticboy/vim-markdown'
Plugin 'embear/vim-foldsearch'

call vundle#end()
filetype plugin indent on
" End vundle config

colorscheme molokai
syntax on

set tabstop=4

" More complex functions - bind them in .vimrc for organization!
" so ~/.vim/functions.vim

" Rebindings
map j gj
map k gk

" Shortcuts
let mapleader = ","
nnoremap <Leader>t :set invexpandtab<CR>
nnoremap <Leader>p :set invpaste<CR>
nnoremap <Leader>n :set invnumber<CR>
nnoremap <Leader>s2 :set sw=2<CR>:set ts=2<CR>
nnoremap <Leader>s4 :set sw=4<CR>:set ts=4<CR>

set noswapfile
set nobackup
set autochdir

" Go stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
