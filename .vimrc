" Disable compatibility with vi wich can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type file in use.
filetype off

" ************************************************************************************************ "
" ---------------------------------------- PLUGINS  ---------------------------------------------- "
" ************************************************************************************************ "

" ************************************************************************************************ "
" ----------------------------------------- VUNDLE ----------------------------------------------- "
" ************************************************************************************************ "

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Let Vundle manage Vundle.
Plugin 'VundleVim/Vundle.vim'

" ************************************************************************************************ "
" ---------------------------------------- THEMES ------------------------------------------------ "
" ************************************************************************************************ "

Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'altercation/solarized'

" let g:molokai_original=1

" ************************************************************************************************ "
" --------------------------------------- POWERLINE ---------------------------------------------- "
" ************************************************************************************************ "

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

Plugin 'powerline/powerline'

set laststatus=2

" ************************************************************************************************ "
" -------------------------------- FILE SYSTEM MANAGER  ------------------------------------------ "
" ************************************************************************************************ "

Plugin 'preservim/nerdtree'

set encoding=utf8
set guifont="Anonymice Nerd Font 13"

" ************************************************************************************************ "
" -------------------------------------- ICONS  -------------------------------------------------- "
" ************************************************************************************************ "

Plugin 'ryanoasis/vim-devicons'

" ************************************************************************************************ "
" ------------------------------- SYNTAX HIGHLIGHT  ---------------------------------------------- "
" ************************************************************************************************ "

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Disable unmatched folder and file icons having the same color as their labels (normally green and white), if set by this plugin
" (it could have been set by some other plugin that you are using).
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir=1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile=1

" Disable Highlighting.
let g:NERDTreeDisableFileExtensionHighlight=1
let g:NERDTreeDisableExactMatchHighlight=1
let g:NERDTreeDisablePatternMatchHighlight=1

" Highlight folders using exact match.
let g:NERDTreeHighlightFolders=1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName=1 " highlights the folder name

" Customizing colors.
let s:brown="905532"
let s:aqua="3AFFDB"
let s:blue="689FB6"
let s:darkBlue="44788E"
let s:purple="834F79" 
let s:lightPurple="834F79" 
let s:red="AE403F" 
let s:beige="F5C06F" 
let s:yellow="F09F17" 
let s:orange="D4843E" 
let s:darkOrange="F16529"
let s:pink="CB6F6F"
let s:salmon="EE6E73"
let s:green="8FAA54"
let s:lightGreen="31B53E"
let s:white="FFFFFF"
let s:rspec_red='FE405F'
let s:git_orange='F54D27'

let g:NERDTreeExtensionHighlightColor={} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css']=s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor={} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore']=s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor={} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec.rb$']=s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor=s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor=s:blue " sets the color for files that did not match any rule

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

" ************************************************************************************************ "
" ------------------------------------- MARKDOWN ------------------------------------------------- "
" ************************************************************************************************ "

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

let g:vim_markdown_conceal=2
let g:vim_markdown_fenced_languages=['bash=sh'] " [name=ext] => use: ```name code ```

let vim_markdown_preview_github=0
let vim_markdown_preview_pandoc=1

call vundle#end()

" ************************************************************************************************ "
" ------------------------------------ END PLUGINS  ---------------------------------------------- "
" ************************************************************************************************ "

" Load and indent file for the detected file type.
filetype indent on

" Turn syntax highlightning on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Add numbers to each line on the left-hand side, realitve to the current line.
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift witdh to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Set the line width to 80 characters.
set textwidth=0

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Show partial command type in the last line of the screen.
set showmode

" ColorScheme.
syntax enable
set background=dark
colorscheme gruvbox
