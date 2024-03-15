"lua require('plugins')

call plug#begin('~/.config/nvim/plugins')
"Plug 'neovim/nvim-lspconfig'
"Plug 'tomasr/molokai'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/nvim-treesitter-context'
call plug#end()

set nocompatible
filetype off

" whole word wrap
set linebreak

syntax on
"colorscheme molokai
set viminfo+=n~/.config/nvim/.viminfo

" bold and italics coloring (great for markdown!)
"highlight htmlBold gui=bold ctermfg=yellow
"highlight htmlItalic gui=italic ctermfg=blue
"highlight htmlTagName gui=italic ctermfg=green

" disable mouse
set mouse=

" because 8 is too much imo
set tabstop=4
set shiftwidth=4

" d doesn't cut (sends to black hole reg)
nnoremap x "_x
vnoremap x "_x

" relative line numbers with absolute cursor line
set nu
set rnu

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

" and misc lua config (https://herrbischoff.com/2022/07/neovim-using-init-vim-and-init-lua-concurrently/)
" source /home/david/.config/nvim/sub_init.lua.vim
