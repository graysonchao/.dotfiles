set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'

" Colors
Plugin 'tomasr/molokai'

" Syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'voithos/vim-python-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'fatih/vim-go'

call vundle#end()

" Style and appearance
colorscheme molokai
set t_Co=256
set scrolloff=5

" window options
set showmode
set showcmd
set ttyfast
set backspace=indent,eol,start
set laststatus=2

syntax on
filetype indent on
filetype plugin on
inoremap # X<C-H>#
set ai
set si
set nu

" omg folding is the worst
set nofoldenable

" omg automatic comment insertion is the worst
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" expand tabs to 2 spaces
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab

" Key bindings
let mapleader = ","
vnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a: :Tabularize /:<CR>
vnoremap <leader>se :s/\(res.*\).should/expect(\1).to/<CR>
nnoremap <leader>p :set invpaste<CR>

" Disable backups.
set nobackup
set nowritebackup
set noswapfile

