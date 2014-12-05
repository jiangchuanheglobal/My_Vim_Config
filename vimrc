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
"Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'vim-scripts/Auto-Pairs'

call vundle#end()            
filetype plugin indent on   

" keyboard
set timeoutlen=250
nmap ' ,
let mapleader=","
inoremap \\ <Esc>
map <Leader>t :NERDTreeToggle<CR>
imap <C-J> <Down>
imap <C-K> <Up>
imap <C-H> <Left>
imap <C-L> <Right>


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

se foldlevel=100            
se hlsearch
se smartcase
se noignorecase
se wrapscan
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
se expandtab
se shiftwidth=4                
se softtabstop=4
se wildchar=<Tab> wildmenu wildmode=full

" dictionary
au FileType c          call AddCDict()
au FileType java       call AddJavaDict()

function AddJavaDict()
    set dict+=~/.vim/dict/java.txt
    set complete+=k
endfunction
function AddCDict()
    set dict+=~/.vim/dict/c.txt
    set complete+=k
endfunction
