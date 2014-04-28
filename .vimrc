""""""Vundle plugin manager 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
let g:vundle_default_git_proto = 'git'
call vundle#rc()

" After installing vundle, type :Install! to get everything else
" But YouCompleteMe will require manual compiling, additionally
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'craigemery/vim-autotag'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tcomment'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ivanov/vim-ipython'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'

filetype plugin indent on     " required

"""""" Configs 

" let youcompleteme collect matches from ctags files
 let g:ycm_collect_identifiers_from_tags_files = 1

 " ultisnips remap of trigger keys
 let g:UltiSnipsExpandTrigger="<c-j>"
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"
 let g:UltiSnipsEditSplit="vertical"

 " for airline
 " install the source code pro powerline fonts from https://github.com/Lokaltog/powerline-fonts
 set laststatus=2
 set ttimeoutlen=50
 set encoding=utf-8
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#show_buffers = 0
 set guifont=Source\ Code\ Pro\ for\ Powerline

 " NERDTree
 let g:NERDTreeMapOpenVSplit = 'v'
 let g:NERDTreeMapOpenSplit = 's'
 map <C-n> :NERDTreeToggle<CR>

 " make tabs be nice
 set tabstop=4
 set shiftwidth=4
 set expandtab
 set autoindent
 set cindent

 " other stuff
 set number
 set relativenumber
 set smartcase "searches are case sensitive only if there are caps 
 set hlsearch
 set splitbelow
 set splitright
 syntax enable

 " load the IPython command
 source ~/.vim/bundle/vim-ipython/ftplugin/python/ipy.vim

 "suggested additions from: http://items.sjbach.com/319
 set hidden
 nnoremap ' `
 nnoremap ` '
 let mapleader = ","
 set history=1000
 runtime macros/matchit.vim
 set wildmenu
 set wildmode=list:longest
 set title
 set scrolloff=3

 " Code Folding
 set foldmethod=indent   "fold based on indent
 set foldnestmax=10      "deepest fold is 10 levels
 set nofoldenable        "dont fold by default
 set foldlevel=1         "this is just what i use

