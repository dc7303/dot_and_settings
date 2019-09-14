filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"""""""""""""""""""""""""""""""""""""" python
Plugin 'vim-scripts/indentpython.vim'
""""""""""""""""""""""""""""""""""""""

" auto completer
Plugin 'Valloric/YouCompleteMe' " ./install.py --clang-completer --js-completer

" file tree
Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-gitgutter'
Plugin 'vim-fugitive'

Plugin 'scrooloose/syntastic'

call vundle#end()

""""""""""""""""""""""""""""""""""""" YCM option
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_keylist_previous_completion = ['<C-p>']

" 자동완성 창 자동 닫기
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 주석과 문자열도 자동 완성에 사용할 소스로 수집
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1

" 한 글자만 입력해도 작동할 것
let g:ycm_min_num_of_chars_for_completion = 1

" python
" let g:ycm_server_python_interpreter = '~/anaconda3/bin/python'
let g:ycm_server_python_interpreter = '/usr/bin/python3'

let g:ycm_filetype_whitelist = {
            \ 'c': 1,
            \ 'cpp': 1,
            \ 'objc': 1,
            \ 'sh': 1,
            \ 'zsh': 1,
            \ 'python': 1,
            \ 'js': 1,
            \}

let g:syntastic_python_checkers = ['pep8']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:jedi#auto_initialization = 0
let g:jedi#completions_enabled = 0
"""""""""""""""""""""""""""""""""""""

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
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" JS
au BufNewFile, BufRead *.js,*.css,*.ts
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

