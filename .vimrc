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
Plugin 'kien/ctrlp.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Ignore plugin indent changes
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Show line numbers
set number

" Typeface


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

" Tab settings
set tabstop=2
set softtabstop=2
set expandtab

" Remap pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap escape insert mode
imap jj <Esc>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
