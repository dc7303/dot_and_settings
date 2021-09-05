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

Plugin 'ryanoasis/vim-devicons' " dependency: https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'jeetsukumaran/vim-buffergator'

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
set hidden
let mapleader=","
let maplocalleader=","

command -nargs=1 Vg vimgrep /<args>/gj **/* | copen

colorscheme jellybeans

" NERDTree
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" vim-dimInactive
let g:diminactive_enable_focus=1

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#buffer_nr_format='%s:'

" YCM
let g:ycm_autoclose_preview_window_after_insertion=1

" fzf
nnoremap <Leader>f :Files<CR>

" Buffergator
let g:buffergator_viewport_split_policy = 'B'
let g:buffergator_suppress_keymaps=1
let g:buffergator_mru_cycle_loop=1
nmap <Leader>bl :BuffergatorOpen<CR>
nmap <Leader>bq :bp <BAR> bd #<CR>
