set nocompatible
syntax on
set notermguicolors t_Co=16
filetype plugin on
set viminfo+=n~/.config/vim/.viminfo

" make backspace work normally in insert mode
set backspace=indent,eol,start

" disable screen flash
set t_vb=
" disable hell screech
set visualbell

" because 8 is too much imo
set tabstop=4

" ctrl backspace delete word (same as ctrl + w)
inoremap <C-BS> <C-w>
inoremap <C-h> <C-w>

" arrow keys scroll in normal mode
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

" show filename
set laststatus=2
