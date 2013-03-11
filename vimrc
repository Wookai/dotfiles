" ditch vi
set nocompatible

" syntax coloring
syn on

" indentation
filetype plugin indent on 

" show matching braces
set showmatch

" replaces tabs with spaces
set expandtab

" tab sizes
set ts=4
set sw=4

" autowrap lines
set columns=80

" support for .cu
au BufNewFile,BufRead *.cu set ft=cu
au BufNewFile,BufRead *.cuh set ft=cu

" bash style file completion
set wildmode=longest,list
set wildmenu

" search highlight
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

" informative status line
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

" auto indent mode for pasting from clipboard
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" line numbers
set nu

" set term title
set title

" automatically load templates for new files
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
