set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Ignore plugin indent changes
filetype plugin on

" Show line numbers
set number

" Color Scheme
set t_Co=256
set background=light
colorscheme pencil
let g:pencil_neutral_code_bg=1   " 0=gray (def), 1=normal

" Explorer mode
let g:netrw_listsyle=3 " NERD Tree

" Airline
let g:airline_powerline_fonts=1
let g:airline_theme='pencil'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1

" Process syntaxes
syntax enable

" File format for Windows teams
set ffs=dos,unix

" Replace tabs with spaces
set expandtab

" Suna
set tabstop=4
set shiftwidth=4
set softtabstop=4

" CloudHealth
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2

" Remap pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap escape insert mode
imap jj <Esc>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
