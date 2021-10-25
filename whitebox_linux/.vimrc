set nocompatible
filetype off

" ~~~~~~~~~~~ Vundle begin ~~~~~~~~~~~

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim glsl
Plugin 'tikhomirov/vim-glsl'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" ~~~~~~~~~~~ Vundle end ~~~~~~~~~~~

set viminfo+=n~/.config/vim/.viminfo
syntax on
set notermguicolors t_Co=16

" bold and italics coloring (great for markdown!)
highlight htmlBold gui=bold ctermfg=yellow
highlight htmlItalic gui=italic ctermfg=blue
highlight htmlTagName gui=italic ctermfg=green

" because 8 is too much imo
set tabstop=4

" make backspace work normally in insert mode
set backspace=indent,eol,start

" ctrl backspace delete word (same as ctrl + w)
inoremap <C-BS> <C-w>
inoremap <C-h> <C-w>

" up down to scroll in normal mode
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>

" search within subfolders (e.g. :find filename)
set path+=**

" display all matching files when we tab complete
set wildmenu

" create the 'tags' file (! indicates terminal exectution)
command! MakeTags !ctags -R .

" map caps lock to escape while using vim
"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" highlight search results
set hlsearch

" show filename
set laststatus=2

" file browsing with netrw
let g:netrw_banner=0 " disable default banner
let g:netrw_liststyle=3 " tree view

" disable auto-commenting on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
