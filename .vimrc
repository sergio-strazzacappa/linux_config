" Disable compatibility with vi wich can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type file in use.
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/solarized'
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on

" Enable plugins and load plugins for the detected file type.
filetype plugin off

" Load and indent file for the detected file type.
filetype indent on

" Turn syntax highlightning on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift witdh to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command type in the last line of the screen.
set showmode

" ColorScheme.
syntax enable
set background=dark
colorscheme gruvbox
