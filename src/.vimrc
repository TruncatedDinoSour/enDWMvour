scriptencoding utf-8

syntax on						" Turn syntax highlighting on
filetype plugin on              " This makes vim invoke Latex-Suite when you open a tex file.

set nocompatible                " No need for VI
set noerrorbells				" Turn off error sound
set expandtab					" Will make the tab key insert spaces instead of tabs
set smarttab					" Will make the tab key insert spaces or tabs to go to the next indent
set smartindent autoindent		" Automatically indent files
set number relativenumber		" Show line count in a file (dynamic)
set nowrap						" Turn word wrapping off
set ignorecase					" Turn case-insensitive searching on
set noswapfile					" Turn swap files off
set nobackup					" Don't back files up after saving the file
set undofile					" Let undo get stored in files
set incsearch					" Show results while searching live
set confirm						" Confirm unsaved changes in files
set lazyredraw                  " Remove macro redraws
set autochdir                   " automatically enter a directory if a file is opened
set cursorline                  " Highlight the current line number
set splitright                  " split the terminal to below and split files to right
set timeout                     " let timeout happen

set encoding=utf-8                      " File encoding
set laststatus=2                        " Set the bar type
set undodir=~/.vim/undodir		        " Where to put undo files
set tabstop=4							" Maximum tab width
set shiftwidth=4						" Indent size
set softtabstop=0						" Insert spaces instead of tabs
set guicursor=a:hor100                  " Set the cursor shape to a _
set clipboard=unnamedplus               " Copy text to clipboard
set timeoutlen=100 ttimeoutlen=100      " Set timeout to 0.1s


" Enable spellchecking and wrapping in vim
autocmd BufReadPost,BufNewFile *.md,*.txt,*.1,*.ms,*.tex,*.latex set spell wrap

" Porth
autocmd BufRead,BufNewFile *.porth set filetype=porth


" Plugins
" YouCompleteMe:
"   after :PlugInstall, install cmake and run the ~/.vim/plugged/youcompleteme/install.py file and
"   then run :YcmRestartServer
call plug#begin("~/.vim/plugged")
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'vim-latex/vim-latex'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
call plug#end()


colorscheme dracula                     " Set the theme

