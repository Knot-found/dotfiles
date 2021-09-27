" --------------------------------
" 基本設定
" --------------------------------
"vi互換カット
set nocompatible

"ファイル名補完
set wildmode=list:longest

"Enable simple color scheme
syntax on
"backspaceが効かない時の対策
set backspace=indent,eol,start

"Enable 行番号表示
set number

"タブ幅を半角4文字に設定
set tabstop=4
set shiftwidth=4

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab

"自動インデント有効化(C言語風)
set smartindent

" 新しい行を開始したとき、新しい行のインデントを現在行と同じにする
set autoindent

"文字コード
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

" vim内部で使われる文字エンコーディングをutf-8に設定する
set encoding=utf-8

"Enable statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"Visible tab & eol
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<

" 想定される改行コードの指定する
set fileformats=unix,dos,mac

" ハイライトを有効化する
syntax enable

" ファイル形式別インデントのロードを有効化する
filetype plugin indent on

" --------------------------------
" Java
" --------------------------------
"Javaのハイライト
set sm
set ai
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"JAVA自動補完(javacomplete)
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo
