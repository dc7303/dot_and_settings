set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plugin 'valloric/youcompleteme'

call vundle#end()

filetype plugin indent on

set nu
set ts=4 sw=4 et
set encoding=utf-8
set fileencodings=utf-8,euc-kr
set autoindent
set smartindent
set showmatch
set sm
set cursorline

set noswapfile
set nobackup

if has("syntax")
  syntax on
endif

set mouse=a

set splitbelow

colorscheme jellybeans

" NERDTree
nmap <C-t> :TagbarToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" vim-dimInactive
let g:diminactive_enable_focus=1

" YCM
let g:ycm_autoclose_preview_window_after_insertion=1
