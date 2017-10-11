# Created by newuser for 5.3.1

#����ե��������¸��
export HISTFILE=${HOME}/.zsh_history
#�������¸���������η��
export HISTSIZE=10000
#�ե��������¸���������η��
export SAVEHIST=1000000
#��ʣ��Ͽ���ʤ�
setopt hist_ignore_dups

#���ϤȽ�λ��Ͽ
setopt EXTENDED_HISTORY

#����Ȥ���褦��
autoload -Uz colors;colors

#��ʸ����ʸ���ζ��̤�Ĥ��ʤ��䴰
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#../�������Ȥ��䴰�ǥ����ȥǥ��쥯�ȥ�θ����Ф��ʤ�
zstyle ':completion:*' ignores-parents parent pwd ..

#sudo�����Ȥ��Υ��ޥ���䴰
zstyle ':completiona:*:sudo:*' command-path /usr/local/sbin /usr/local/bin/ \
                                        /usr/sbin /usr/bin /sbin /bin
#�ե�����̾�����ܸ��б�
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
