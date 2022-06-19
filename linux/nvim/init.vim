call plug#begin('~/.local/share/vim-plugins')
Plug 'tomasr/molokai'
call plug#end()

set nocompatible
filetype off

syntax on
colorscheme molokai
"set notermguicolors t_Co=16

" bold and italics coloring (great for markdown!)
"highlight htmlBold gui=bold ctermfg=yellow
"highlight htmlItalic gui=italic ctermfg=blue
"highlight htmlTagName gui=italic ctermfg=green

" because 8 is too much imo
set tabstop=4
set shiftwidth=4

" make backspace work normally in insert mode
set backspace=indent,eol,start

" up down to scroll in normal mode
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>

" ctrl+e/y to scroll in insert mode
inoremap <C-e> <C-o><C-e>
inoremap <C-y> <C-o><C-y>

" search within subfolders (e.g. :find filename)
set path+=**

" display all matching files when we tab complete
set wildmenu

" create the 'tags' file (! indicates terminal exectution)
command! MakeTags !ctags -R .

" highlight search results
set hlsearch

" show filename
set laststatus=2

" file browsing with netrw
let g:netrw_banner=0 " disable default banner
let g:netrw_liststyle=3 " tree view

" disable auto-commenting on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

