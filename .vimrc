"vi互換カット
set nocompatible
"ファイル名補完
set wildmode=list:longest
"Enable simple color scheme
syntax on
"backspaceが効かない時の対策
set backspace=indent,eol,start

"Javaのハイライト
set sm
set ai
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"JAVA自動補完(javacomplete)
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo

"カーソル位置の強調表示
"set cursorline
"highlight CursorColumn ctermbg=Green
"highlight CursorColumn ctermfg=Black
"set cursorcolumn
"highlight CursorLine ctermbg=Blue
"highlight CursorLine ctermfg=Blue

"Enable line number
set number

"Enable statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"Set tab width(4char)
set tabstop=4
set shiftwidth=4
set smartindent
"Visible tab & eol
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<

set fileencodings=utf-8,cp932,shift_jis
"文字コード
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

" -------------------------------
" NeoBundle
" -------------------------------

""if has('vim_starting')
" if &compatible
"    set nocompatible
"  endif
"
"  set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif
"
"call neobundle#begin(expand('~/.vim/bundle'))
"
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"" コード補完
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'marcus/rsense'
"
"" 静的解析
"NeoBundle 'scrooloose/syntastic'
"
"" ドキュメント参照
"NeoBundle 'thinca/vim-ref'
"NeoBundle 'yuku-t/vim-ref-ri'
"
"" メソッド定義元へのジャンプ
"NeoBundle 'szw/vim-tags'
"
"" 自動で閉じる
"NeoBundle 'tpope/vim-endwise'
"
"call neobundle#end()
"
"NeoBundleCheck
"
"" --------------------------------
"" neocomplete.vim
"" --------------------------------
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"if !exists('g:neocomplete#force_omni_input_patterns')
"  let g:neocomplete#force_omni_input_patterns = {}
"endif
"let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'
"
"" --------------------------------
"" rubocop
"" --------------------------------
"" syntastic_mode_mapをactiveにするとバッファ保存時にsyntasticが走る
"" active_filetypesに、保存時にsyntasticを走らせるファイルタイプを指定する
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
"let g:syntastic_ruby_checkers = ['rubocop']
"
" --------------------------------
" 基本設定
" --------------------------------
" vim内部で使われる文字エンコーディングをutf-8に設定する
set encoding=utf-8

" 想定される改行コードの指定する
set fileformats=unix,dos,mac

" ハイライトを有効化する
syntax enable

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab

" 新しい行を開始したとき、新しい行のインデントを現在行と同じにする
set autoindent

" ファイル形式の検出の有効化する
" ファイル形式別プラグインのロードを有効化する
" ファイル形式別インデントのロードを有効化する
filetype plugin indent on

