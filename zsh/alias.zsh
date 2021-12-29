# coreutils

alias cp='cp -iv'
alias mv="mv -iv"
alias igrep='grep -i'
alias lsa="lsd -alh"
alias ls="lsd"
alias df="duf";
alias find="fd";
alias g="git";
alias svim='sudo vim'
alias murder='pkill --signal SIGKILL'
alias mpvn='mpv --no-video'
alias info='info --vi-keys'
alias l='less'
alias selpwd='pwd | xsel -b'
alias rss='newsboat'
alias numFiles='echo $(ls -1 | wc -l)'
alias aconf="vi ~/Sync/.zsh/alias.zsh"
alias home="cd ~"
alias vim="nvim"
alias du="dua"
alias vi="nvim"
alias mvp="mpv"
alias dc="docker-compose"
alias kasa="kasa-rs"

if [ "$(uname)" = "Linux" ]; then
	alias rm='rm -Iv'
	alias open="xdg-open"
	alias streamlink="streamlink -p mpv"
fi
if [ "$(uname)" = "Darwin" ]; then
	alias rm='rm -v'
	alias ext4fuse="ext4fuse -o allow_other"
	alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
fi
#alias screen="/usr/local/Cellar/screen/4.6.2/bin/screen"
#ssh
# operating system dependent shite and abbr
typeset -Ag abbreviations