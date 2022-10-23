" ------------------------------------------------------------------------------------------------ "
" Index:
" 	1. General settings
" 	2. Plugins (Vundle)
" 	3. Plugins settings
"	4. Mappings
" ------------------------------------------------------------------------------------------------ "

" ------------------------------------------------------------------------------------------------ "
" 1. General settings
" ------------------------------------------------------------------------------------------------ "

" Disable vi compatibility
set nocompatible

" Lines of memory to remember
set history=1000

" Leader key to add extra key combination

" Time delay on the <Leader> key
set timeoutlen=3000
set ttimeoutlen=100

set updatetime=250

" Open help in a vertical window
cnoreabbrev help vert help

" Enable type file detection. Vim will be able to try to detect the type file in use.
filetype on

" Load and indent file for the detected file type.
filetype indent on

"------------------------------------------------------------------------------------------------- "
" 2. Plugins (Vundle)
" ------------------------------------------------------------------------------------------------ "

set rtp+=~/.vim/bundle/Vundle.vim

" List of plugins installed
call vundle#begin()

	" Plugin manager
	Plugin 'VundleVim/Vundle.vim'

	" Python support
	Plugin 'dense-analysis/ale'		" Complete tool analysis
	Plugin 'davidhalter/jedi-vim' 	" Autocomplete
	Plugin 'nvie/vim-flake8'

	" Markdown support
	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'JamshedVesuna/vim-markdown-preview'

" ------------------------------------------------------------------------------------------------ "
" 3. Plugins settings
" ------------------------------------------------------------------------------------------------ "

" --- Languages --- "

" Python settings
" ----------------------- "
" -- ALE Configuration -- "
" ----------------------- "
" *** General *** "
let g:ale_close_preview_on_insert				= 0
let g:ale_cursor_detail							= 0
let g:ale_disable_lsp							= 1
let g:ale_echo_cursor							= 1
let g:ale_echo_delay							= 10
let g:ale_echo_msg_error_str					= 'Error'
let g:ale_echo_msg_info_str						= 'Info'
let g:ale_echo_msg_warning_str					= 'Warning'
let g:ale_echo_msg_format						= '%code: %%s'
let g:ale_enabled								= 1
let g:ale_floating_preview						= 0
let g:ale_history_enabled						= 1
let g:ale_history_log_output					= 1
let g:ale_list_vertical							= 0 
let g:ale_max_buffer_history_size				= 10
let g:warn_about_trailing_blank_lines			= 1
let g:warn_about_trailing_whitespaces			= 1

" *** Linter *** "
let g:ale_lint_delay							= 300
let g:ale_lint_on_enter							= 0 
let g:ale_lint_on_filetype_changed				= 0
let g:ale_lint_on_save							= 1
let g:ale_lint_on_text_changed					= 'never' 
let g:ale_lint_on_insert_leave					= 0
let g:ale_linter_aliases						= {}
let g:ale_linters								= {'python': ['flake8']}
let g:ale_linters_explicit						= 1
let g:ale_linters_ignore						= {}

" *** Completion *** "
let g:ale_completion_enabled					= 0

" ------------------------ "
" -- JEDI Configuration -- "
" ------------------------ "
let g:jedi#max_doc_height						= 15
let g:jedi#auto_initialization					= 1
let g:jedi#auto_vim_configuration				= 1
let g:jedi#popup_on_dot							= 1 
let g:jedi#popup_select_first					= 1
let g:jedi#auto_close_doc						= 1
let g:jedi#show_call_signatures					= 1
let g:jedi#show_call_signatures_delay			= 500
let g:jedi#use_tabs_not_buffers					= 0
let g:jedi#squelch_py_warning					= 0
let g:jedi#completions_enabled					= 1
let g:jedi#use_splits_not_buffers				= 'right'
let g:jedi#force_py_version						= 'auto'
let g:jedi#smart_auto_mappings					= 1
let g:jedi#use_tag_stack						= 0
let g:jedi#environment_path						= 'auto'
let g:jedi#added_sys_path						= [] 
let g:jedi#case_insensitive_completion			= 1

" --------------------------- "
" -- FLAKE 8 Configuration -- "
" --------------------------- "
let g:flake8_quickfix_location					= 'below'
let g:flake8_quickfix_height					= 10
let g:flake8_show_quickfix						= 1 
let g:flake8_show_in_gutter						= 1
let g:flake8_show_in_file						= 1
let g:flake8_max_markers						= 500
let g:flake8_error_marker						= 'EE'
let g:flake8_warning_marker						= 'WW'
let g:flake8_pyflake_marker						= ''
let g:flake8_complexity_marker					= ''
let g:flake8_naming_marker						= ''

" Markdown settings
let g:vim_markdown_conceal						= 2
let vim_markdown_preview_toggle					= 0
let vim_markdown_preview_pandoc					= 1

" Markdown resalta la sintaxis del código escrito en los siguientes lenguajes de programación: Bash, Python
let g:vim_markdown_fenced_languages				= [
													\'bash=sh',
													\'python=py'
												 \] " [name=ext] => use: ```name code ```

" ------------------------------------------------------------------------------------------------ "
" 3. Mappings
" ------------------------------------------------------------------------------------------------ "
let mapleader									= ' '

nnoremap <F12>	:source ~/.vimrc<CR>
nnoremap <F3>	:noh<CR>

" Autocomplete
let g:jedi#completions_command					= '<C-Space>'
let g:jedi#goto_command							= '<leader>d'
let g:jedi#goto_assignment_command				= '<leader>g'
let g:jedi#goto_stubs_command					= '<leader>s'
let g:jedi#documentation_command				= 'K'
let g:jedi#rename_command						= '<leader>r'
let g:jedi#usages_command						= '<leader>n'














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

" ************************************************************************************************ "
" ---------------------------------- SYNTAX CHECK ------------------------------------------------ "
" ************************************************************************************************ "
"Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-surround'

" ************************************************************************************************ "
" ------------------------------------------ BASH ------------------------------------------------ "
" ************************************************************************************************ "

Plugin 'bash-support.vim'

let g:BASH_LineEndCommColDefault=69
let g:BASH_Executable='/bin/bash'
"let g:BASH_MapLeader=' '
let g:BASH_InsertFileHeader='no'

" ************************************************************************************************ "
" ---------------------------------------- AWK --------------------------------------------------- "
" ************************************************************************************************ "

Plugin 'wolfgangmehner/awk-support'

let g:Awk_LineEndCommColDefault=69
"let g:Awk_MapLeader=' '
let g:Awk_InsertFileHeader='no'

call vundle#end()

" ************************************************************************************************ "
" ------------------------------------ END PLUGINS  ---------------------------------------------- "
" ************************************************************************************************ "


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

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Set the line width to 80 characters.
set textwidth=0

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

set hlsearch

" Show partial command type in the last line of the screen.
set showmode

" ColorScheme.
syntax enable
set background=dark
colorscheme gruvbox
