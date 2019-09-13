filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" YCM option
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

filetype plugin indent on

" 번호
set nu

" 현재 영역 괄호의 짝 표시
set showmatch

" syntax 지원
if has("syntax")
    syntax on
endif

set encoding=utf-8
set fileencodings=utf-8,cp949,default,latin1
set termencoding=utf-8

set ruler

set autoindent
set smartindent
set expandtab
set history=256

" 기본 들여쓰기
set ts=4
set sts=4
set sw=4
set expandtab

" 특정 확장자에 따른 들여쓰기
" PEP 8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" JS
au BufNewFile,BufRead *.js,*.css,*.ts
    \ set ts=2
    \ set sts=2
    \ set sw=4

" 검색시 대소문자 구별 안함
set ic
set smartcase

" 항상 status 라인 표시
set ls=2

" mouse 사용
if has('mouse')
    set mouse=a
endif

