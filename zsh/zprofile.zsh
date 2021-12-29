# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# bash like time format
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

export JAVA_HOME="/usr/lib/jvm/default-runtime"
export EDITOR="nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$HOME/.cargo/bin:$PATH"
typeset -gU cdpath fpath mailpath path

eval "$(thefuck --alias)"

if [ "$(uname)" = "Linux" ]; then
	export USBE="/run/media/dominic"
	export MAKEFLAGS="-j $(nproc)"
	export _JAVA_AWT_WM_NONREPARENTING=1
	export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
	export PATH="$HOME/.yarn/bin:$PATH"
	export PATH="$HOME/bin:$PATH"
	export DOTNET_CLI_TELEMETRY_OPTOUT=1
	export LANGUAGE=en_US.UTF-8
	export LANG=en_US.UTF-8
	export LC_ALL=en_US.UTF-8
	export ORACLE_PASSWORD=fleisch15
	#scale hpdi
	export GDK_DPI_SCALE=1
	export GDK_SCALE=1
	export ELM_SCALE=1
	export QT_QPA_PLATFORMTHEME=qt5ct
	export QT_AUTO_SCREEN_SCALE_FACTOR=1
	eval "$(direnv hook zsh)"
	[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
	alias code="code --force-device-scale-factor=1"
fi

if [ "$(uname)" = "Darwin" ]; then
        . ~/.nix-profile/etc/profile.d/nix.sh
	fpath=(/usr/local/share/zsh-completions $fpath)
	PATH="$HOME/bin:$PATH"
	export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
	export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
	export PATH="$PATH:/usr/local/opt/llvm/bin"
	export PATH="/usr/local/sbin:$PATH"
	export PATH="/usr/local/Cellar/node/11.12.0/bin:$PATH"
	export PATH="$PATH:/usr/local/share/dotnet"
	export HOMEBREW_NO_AUTO_UPDATE=1
	export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
	export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"
fi
