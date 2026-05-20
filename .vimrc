" timeout and jk for esc
" there are no english words for jk so should be fine
" We also set a short timeout
set timeoutlen=100
inoremap jk <Esc>
" normal backspace behaviour
set backspace=indent,eol,start
" remap delete previous whole word to ctrl-backspace
inoremap <C-Bs> <C-w>
" remap delete forward word to ctrl-del
inoremap <C-Del> <space><esc>ce
" Disable vim bell sounds
set belloff=all
" Turn on syntax highlighting
syntax on
" Make vim behaves less like vi
set nocompatible
" Keep a backup copy of the file being edited
" set backup
" The Location of the backup files.
" set backupdir=~/.backup
" Automatically indent the new line
set autoindent
" Indent the new line according to C-like syntax
set smartindent
" Make default indent at 2 spaces
set shiftwidth=4
" Set tab stop to 2
set tabstop=4
" Load the relevant plugins and indentation rules based on file types
filetype plugin indent on
"
" Replace all tab with spaces
set expandtab
" Display lines longer than the current window on the next line(s)
set wrap
" Prevent breaking a word into multiple lines when wrapping
set linebreak
" Display line and column number on the lower-right corner.
set ruler
" Enable 24-bit colors
set termguicolors
set t_Co=256
" Use molokai as default color scheme
set background=dark
colorscheme sorbet 
" To get around problem with seemingly random characters appear in certain
" teminals.
set t_RV=
set t_u7=

" uncomment to turn on line number
set number

" vim is optimized for keyboard-only, but if you insist on using mouse,
" uncomment the following
" set mouse+=a

" some advanced options requested by students.  Use them only if
" you know what you are doing (I don't know what they do!)
" set hidden 
set wildmenu 
" set showcmd 
set hlsearch 
nnoremap \\ :noh<return>
" set confirm 
" set visualbell 
set ignorecase 
" set smartcase

" For students who are used to using the psvm/sout/sop abbreviation, you can
" uncomment the following.
"
" abbr psvm public static void main(String[] args){<CR>}<esc>O
" abbr sout System.out.println("");<esc>2hi
" abbr sop System.out.print("");<esc>2hi
"
" Disable mouse in vim
set mouse=
set ttymouse=

function RunMain()
       :! javac Main.java <bar> java Main
endfunction
