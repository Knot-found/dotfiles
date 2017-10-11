# Created by newuser for 5.3.1

#ÍúÎò¥Õ¥¡¥¤¥ë¤ÎÊÝÂ¸Àè
export HISTFILE=${HOME}/.zsh_history
#¥á¥â¥ê¤ËÊÝÂ¸¤µ¤ì¤ëÍúÎò¤Î·ï¿ô
export HISTSIZE=10000
#¥Õ¥¡¥¤¥ë¤ËÊÝÂ¸¤µ¤ì¤ëÍúÎò¤Î·ï¿ô
export SAVEHIST=1000000
#½ÅÊ£¤òµ­Ï¿¤·¤Ê¤¤
setopt hist_ignore_dups

#³«»Ï¤È½ªÎ»¤òµ­Ï¿
setopt EXTENDED_HISTORY

#¿§¤ò»È¤¨¤ë¤è¤¦¤Ë
autoload -Uz colors;colors

#ÂçÊ¸»ú¾®Ê¸»ú¤Î¶èÊÌ¤ò¤Ä¤±¤Ê¤¤Êä´°
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#../¤·¤¿¤¢¤È¤ÎÊä´°¤Ç¥«¥ì¥ó¥È¥Ç¥£¥ì¥¯¥È¥ê¤Î¸õÊä¤ò½Ð¤µ¤Ê¤¤
zstyle ':completion:*' ignores-parents parent pwd ..

#sudo¤·¤¿¤È¤­¤Î¥³¥Þ¥ó¥ÉÊä´°
zstyle ':completiona:*:sudo:*' command-path /usr/local/sbin /usr/local/bin/ \
                                        /usr/sbin /usr/bin /sbin /bin
#¥Õ¥¡¥¤¥ëÌ¾¤ÎÆüËÜ¸ìÂÐ±þ
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
