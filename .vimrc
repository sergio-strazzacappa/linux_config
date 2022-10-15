" Disable compatibility with vi wich can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type
" file in use.
filetype off

" Set the runtime path to include Vundle, Powerline and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

call vundle#begin()

" *****************************
" ********** PLUGINS **********
" *****************************

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" --- THEMES ---
Plugin 'morhetz/gruvbox'


" ************************************************************************************************ "
" --------------------------------------- POWERLINE ---------------------------------------------- "
" ************************************************************************************************ "

Plugin 'powerline/powerline'

set laststatus=2

" --- FILE SYSTEM MANAGER ---
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

"set encoding=utf8
"set guifont=Ubuntu\ 13

" --- SYNTAX CHECK ---
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'tpope/vim-surround'

" ************************************************************************************************ "
" ------------------------------------------ BASH ------------------------------------------------ "
" ************************************************************************************************ "

Plugin 'bash-support.vim'

let g:BASH_LineEndCommColDefault=69
let g:BASH_Executable='/bin/bash'
let g:BASH_MapLeader=','
let g:BASH_InsertFileHeader='no'

" ************************************************************************************************ "
" ---------------------------------------- AWK --------------------------------------------------- "
" ************************************************************************************************ "

Plugin 'wolfgangmehner/awk-support'

let g:Awk_LineEndCommColDefault=69
let g:Awk_MapLeader=','
let g:Awk_InsertFileHeader='no'
" --- MARKDOWN ---
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

let g:vim_markdown_conceal=2
let vim_markdown_preview_github=0
let vim_markdown_preview_pandoc=1
let vim_markdown_preview_browser='Firefox'

call vundle#end()

" **********************************
" **********  END PLUGINS **********
" **********************************

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

" Set the line widht to 80 characters.
set textwidth=0

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters
" as you type.
set incsearch

" Show partial command type in the last line of the screen.
set showmode

" ColorScheme.
syntax enable
set background=dark
colorscheme gruvbox
