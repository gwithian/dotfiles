" .gvimrc
" Tom Hartnell <github.com/gwithian>
" v 0.1
" rev. 2012-07-29

" Set molokai theme to use original colors
let g:molokai_original = 1

" Set colorscheme
colorscheme molokai

" Sets the font and size
" set guifont=Inconsolata-dz:h12 - below is patched powerline version
set guifont=Inconsolata-dz\ for\ Powerline:h12

" Number of horizontal lines on the screen
set lines=60

" GUI Options to remove the Toolbar and l/r scrollbars
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=L
set guioptions-=R

" set transparency=7

" Set fullscreen as default - maximized to horizontal width
set fuopt+=maxhorz
"set fu

" toggle fullscreen mode
map <leader>f :set invfu<CR>
