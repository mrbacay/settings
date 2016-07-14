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
Plugin 'embear/vim-localvimrc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/matchtagalways'

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
let g:netrw_liststyle=3 " NERD Tree

" Airline
let g:airline_powerline_fonts=1
let g:airline_theme='pencil'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#enabled=1

" Process syntaxes
syntax enable

" Deafult coding convention
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Replace tabs with spaces
set expandtab

" Remap pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open buffer in a new tab
set switchbuf=usetab

" Remap buffer navigation
nnoremap <D-J> :sbprev<CR>
nnoremap <D-L> :sbnext<CR>

" Remap escape insert mode
imap jj <Esc>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
