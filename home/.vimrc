set guifont=Meslo\ LG\ M\ for\ Powerline:h12
" filetype plugin indent on
syntax on
set number
let g:airline_powerline_fonts = 1
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab
set nocompatible              " be iMproved, required
filetype off                  " required
let g:NERDTreeDirArrows = 1
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" " Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
" " Plugin 'pangloss/vim-javascript'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
" " All of your Plugins must be added before the following line
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'jphustman/CFML-10-Vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-easymotion'
" " Plugin 'airblade/vim-rooter'
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let mapleader = ','
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>s :update<CR>
set background=dark
set cursorline
colorscheme solarized
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore bower_components
      \ --ignore node_modules
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
" " Some file type syntax associations
au! BufNewFile,BufRead *.twig setf HTML
