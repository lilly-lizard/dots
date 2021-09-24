set nocompatible
syntax on
filetype plugin on

" colors
set background=light
set notermguicolors t_Co=16

" disable screen flash
set t_vb=
" disable hell screech
set visualbell

" show filename, position, percentage
set laststatus=2
set ruler

" tab visual size
set tabstop=4

" allow backspace to work outside of current insert session
set backspace=indent,eol,start

" ctrl/alt backspace delete word (same as ctrl + w)
inoremap <C-BS> <C-w>
" https://stackoverflow.com/questions/5379837/is-it-possible-to-mapping-alt-hjkl-in-insert-mode
inoremap <Esc>ab <C-w>

" scroll with arrow keys in normal mode
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>

" search within subfolders (e.g. :find filename)
set path+=**

" display all matching files when we tab complete
set wildmenu

" create the 'tags' file (! indicates terminal exectution)
command! MakeTags !ctags -R .

" file browsing with netrw
let g:netrw_banner=0 " disable default banner
let g:netrw_liststyle=3 " tree view

" highlight all search results
set hlsearch

" disable auto comment new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
