set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
syntax on
"display line numbers on the left
set number
"automaticlly reload .vimrc when saved
au BufWritePost .vimrc so ~/.vimrc 

" Map escape 
:imap ;; <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" run ':PluginInstall' to properly load vundle plguins
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
Plugin 'tomasr/molokai'
 
Plugin 'scrooloose/nerdtree'
 
Plugin 'kien/ctrlp.vim'
 
Plugin 'kchmck/vim-coffee-script'
 
Plugin 'tpope/vim-endwise'
 
Plugin 'rstacruz/sparkup'
 
Plugin 'https://bitbucket.org/kink/kink.vim'
 
Plugin 'vim-scripts/AutoComplPop' 
"needed for gist
Plugin 'mattn/webapi-vim'
 
Plugin 'mattn/gist-vim'
 
Plugin 'tpope/vim-rails'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"For Vim solarized
syntax enable
""let g:solarized_termcolors=256
"set background=dark
""colorscheme solarized
"#############################
colorscheme molokai



" Make all tabs spaces
set expandtab
set shiftwidth=2
set softtabstop=2
