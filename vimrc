" .vimrc
" Tom Hartnell <github.com/gwithian>
" v 0.1
" rev. 2012-07-29

" initial settings thanks to http://mislav.uniqpath.com/2011/12/vim-revisited/

" Pathogen plugin management
call pathogen#infect()
call pathogen#helptags()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set modelines=0                 " avoid security exploits


" Remap leader key from '\' to ','
let mapleader = ","

" test remap jj as escape
inoremap jj <ESC>

" open and switch to new vertical split 
nnoremap <leader>w <C-w>v<C-w>l

" better navigation in split views
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Whitespace
set wrap                        " wrap lines
set linebreak
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80              " highlight the 80th column
set showbreak=…                 " show symbol for soft broken lines

"" Searching/moving - thanks to <http://stevelosh.com/blog/2010/09/coming-home-to-vim/>
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " Substitute globally on lines

" fix Vim’s horribly broken default regex “handling” by automatically inserting a \v before any string you search for
nnoremap / /\v                  
vnoremap / /\v

" clear dynamic search highlights with leader-space
noremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"switch between recent buffers
nnoremap <leader><leader> <c-^>

" Set autocomplete for JS files
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Auto set Vim working path to current files dir
autocmd BufEnter * silent! lcd %:p:h

" Text bubbling- thanks to Drew Neil <vimcasts.org>
" requires vim-unimpared plugin <github.com/tpope/vim-unimpaired>
" single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" multiline
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Powerline settings
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Steve Losh's temp settings for the Vim trainee, what, no arrow keys?
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
