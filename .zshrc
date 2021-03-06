# Created by newuser for 5.3.1

#履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
#メモリに保存される履歴の件数
export HISTSIZE=10000
#ファイルに保存される履歴の件数
export SAVEHIST=1000000
#重複を記録しない
setopt hist_ignore_dups

#開始と終了を記録
setopt EXTENDED_HISTORY

#色を使えるように
autoload -Uz colors;colors

#大文字小文字の区別をつけない補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#../したあとの補完でカレントディレクトリの候補を出さない
zstyle ':completion:*' ignores-parents parent pwd ..

#sudoしたときのコマンド補完
zstyle ':completiona:*:sudo:*' command-path /usr/local/sbin /usr/local/bin/ \
                                        /usr/sbin /usr/bin /sbin /bin
#ファイル名の日本語対応
setopt print_eight_bit

bindkey -e

PROMPT="%{[;32;1m%}[%n@%m] %F{blue}[%~]%f %#%{[m%} "
#PROMPT2="%_> "
#RPROMPT="[%40<...<%~]"

autoload -U compinit; compinit



setopt auto_cd

alias ...='cd ../..'
alias ....='cd ../../..'

zstyle ':completion:*:default' menu select=1

alias sudo='sudo -E'
alias ls='ls --color=auto'
