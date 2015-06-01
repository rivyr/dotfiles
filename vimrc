syntax on
filetype plugin indent on

colorscheme badwolf

set nocompatible              " be iMproved, required
filetype off                  " required

if has("autocmd")
    filetype plugin indent on
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" rainbow parentheses
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1
"
" paste mode
Plugin 'ConradIrwin/vim-bracketed-paste'

" nerdtree
Plugin 'scrooloose/nerdtree.git'

" nelstrom"
Plugin 'nelstrom/vim-markdown-folding'

" airline
Plugin 'bling/vim-airline'
" smarter tab line for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
" promptline
Bundle 'edkolev/promptline.vim'
"
" fugitive
Plugin 'tpope/vim-fugitive'
"
" fugitive
Plugin 'tpope/vim-commentary'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = ","

set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set modelines=0

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap ; :
nnoremap q; q:

nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.dotfiles/vimrc<cr>

set wrap
set textwidth=79
set formatoptions=qn1

" split stuff
" new split
nnoremap <leader>w <C-w>v<C-w>l
" ^hjkl to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" search changes
set list
set listchars=tab:▸\ ,eol:¬

" color 81st column
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" mapping for nerd tree
map <C-n> :NERDTreeToggle<CR>

" folding
set foldmethod=indent
noremap <space> za
vnoremap <space> zft
au BufRead * normal zR

" Swap v and CTRL-V, 
nnoremap    v   <C-V>
nnoremap <C-V>     v
vnoremap    v   <C-V>
vnoremap <C-V>     v

" .md = markdown syntax
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" start at same place including folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" source .vimrc when its written
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
