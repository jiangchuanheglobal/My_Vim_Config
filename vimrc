" --------------------------
" file: vimrc
" vim core config file
" author: jiangchuan
" history: 
" --------------------------

set nocompatible
filetype off   

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'


call vundle#end()            
filetype plugin indent on   

" keyboard
set timeoutlen=250
nmap ' ,
let mapleader=","
inoremap \\ <Esc>


" display
if has("gui_running")
        se t_Co=256
        colorscheme elflord
        se guifont=inconsolata:h24
        se transparency=15
endif

" misc
syntax enable                
syntax on 

filetype indent on           
filetype plugin on          

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

se hlsearch
se smartcase
se noignorecase
se nowrapscan
se magic
se incsearch  
se hidden
se autoindent
se ai
se smartindent
se ruler
se laststatus=2
se nobackup                 
se noswapfile              
se expandtab
se encoding=utf-8
se fenc=utf-8
se nowildignorecase
se nu

" plugin


