"Enable simple color scheme
syntax on

"カーソル位置の強調表示
set cursorline
set cursorcolumn


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
