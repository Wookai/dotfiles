" ditch vi
set nocompatible

" syntax coloring
syn on

" indentation
filetype plugin indent on 

" show matching braces
set showmatch

" do not replaces tabs with spaces
set noexpandtab

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

" disable folding in markdown
let g:vim_markdown_folding_disabled=1

" automatically load templates for new files
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

" open splits right and below
set splitbelow
set splitright

execute pathogen#infect()

" highlight whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" remove trailing whitespaces from py files
autocmd BufWritePre *.py :%s/\s\+$//e

" highlight WSGI files like python
au BufNewFile,BufRead *.wsgi set filetype=python

" use tabs for javascript and HTML, disable whitespace highlights
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4  listchars&
autocmd Filetype html setlocal ts=4 sts=4 sw=4 listchars&

" replace tabs with spaces in python
autocmd Filetype python setlocal expandtab

" automatically show location list when there are errors
let g:syntastic_auto_loc_list=1
