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
set laststatus=2
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gmarik/Vundle.vim'
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
" Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
" Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'jphustman/CFML-10-Vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'elzr/vim-json'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tomtom/tcomment_vim'
Plugin 'rking/ag.vim'
" Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'lepture/vim-velocity'
" Plugin 'Raimondi/delimitMate'
" Plugin 'majutsushi/tagbar'
Plugin 'mxw/vim-jsx'
Plugin 'sheerun/vim-polyglot'
" " Plugin 'docunext/closetag.vim'

" " Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
" Plugin 'othree/html5.vim'
Plugin 'evidens/vim-twig'
" Plugin 'xolox/vim-session'
" Plugin 'Townk/vim-autoclose'
Plugin 'Valloric/YouCompleteMe'
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
noremap <Leader>s :update<CR>
noremap <Leader>C ggVG"*y``
noremap <Leader>P ggVG"*p``
noremap <Leader>c "*y
noremap <Leader>p "*p
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore bower_components
      \ --ignore node_modules
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore vendor
      \ --ignore dist
      \ --ignore lib
      \ -g ""'
" " Some file type syntax associations
au! BufNewFile,BufRead *.twig setf HTML
au BufNewFile,BufRead *.vm,*.vtl set ft=velocity
" " hi Normal ctermfg=188 ctermbg=234 cterm=NONE guifg=#d3d0c8 guibg=#2d2d2d gui=NONE
autocmd ColorScheme * highlight CursorLine ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
colorscheme base16-default
set cursorline
let g:jsx_ext_required = 0
augroup vagrant
au!
au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END
" Netrw options
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_winsize = -28
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'  " --> I want line numbers on the netrw buffer
nnoremap <silent> <leader>n :Lexplore<cr>
