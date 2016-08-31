"Enable simple color scheme
syntax on

"Enable line number
set number

"Enable statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

"Set tab width(4char)
set tabstop=4
set shiftwidth=4

"Visible tab & eol
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<
