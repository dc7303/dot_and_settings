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
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

" 검색시 대소문자 구별 안함
set ic
set smartcase

" 항상 status 라인 표시
set ls=2

if has('mouse')
    set mouse=a
endif

