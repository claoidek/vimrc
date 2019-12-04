"
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" First clear any existing autocommands:
autocmd!

" Have 1000 lines of command-line (etc) history:
set history=1000

" Have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r

" Display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" When using list, keep tabs at their full width and display `arrows':
execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)
" (Character 187 is a right double-chevron, and 183 a mid-dot.)

" Don't have files trying to override this .vimrc:
set nomodeline

" Normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 205 characters:
set formatoptions-=t
set textwidth=80

" Treat lines starting with a quote mark as comments (for `Vim' files, such as
" this very one!), and colons as well so that reformatting usenet messages from
" `Tin' users works OK:
set comments+=b:\"
set comments+=n::

" Enable filetype detection:
filetype on

" In human-language files, automatically format everything at 72 chars:
autocmd FileType mail,human set formatoptions+=t textwidth=72

" Make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" Show the `best match so far' as search strings are typed:
set incsearch

" Don't highlight matches
set nohlsearch

" Spacebar toggles match highlighting
nnoremap <space> :set hlsearch!<CR>

" Have Y behave analogously to D and C rather than to dd and cc (which is
" already done by yy):
noremap Y y$

" Allow <BkSpc> to delete line breaks, beyond the start of the current
" insertion, and over indentations:
set backspace=eol,start,indent

syntax on

" Colorscheme setting
" Options:
" blue
" darkblue
" default
" delek
" desert
" elflord
" evening
" koehler
" morning
" murphy
" pablo
" peachpuff
" ron
" shine
" slate
" torte
" zellner
colorscheme slate

" Line numbers on
set number

" Show line numbers relative to current line
" Disabled on ARCHER because vim isn't up to date
" set relativenumber

" Highlight current line
set cursorline

" Suppress highlighting matching brackets
let loaded_matchparen=1

" Keep number of lines above and below cursor
set scrolloff=999

" Swap g_ and $ functionality
nmap $ g_

" Don't jump to start of line
set nostartofline

" Expand tabs
set expandtab

filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4

" Set W to write and Q to quit to avoid annoying typos
command! W  write
command! Q  quit
command! Wq write|quit
command! WQ write|quit

" Define new filetype which is just a text file with C style comments
au BufRead,BufNewFile *.ctxt set filetype=c

" If reading a lexicon file include @ as a word character
au BufRead,BufNewFile *.lex set iskeyword+=@-@

" Set leader key
let mapleader = "-"

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable enter and backspace in normal mode
nnoremap <backspace> <nop>
nnoremap <Enter> <nop>

" Centre search results
nnoremap n nzz
nnoremap N Nzz

" Remove octal from number formats to allow Ctrl+A to increment 07 -> 08
" correctly (for example).
set nrformats-=octal   

" Disable Ctrl-Z
nnoremap <c-z> <nop>

" Shortcut for autocompletion
noremap <C-c> <C-x><Tab>
