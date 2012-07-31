" .vimrc
" Tom Hartnell <github.com/gwithian>
" v 0.1
" rev. 2012-07-29

" initial settings thanks to http://mislav.uniqpath.com/2011/12/vim-revisited/

" Pathogen runtime management
call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Set autocomplete for JS files
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" Auto set Vim working path to current files dir
autocmd BufEnter * silent! lcd %:p:h
