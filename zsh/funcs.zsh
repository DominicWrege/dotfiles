cd() {

	if [ -z "$1" ]; then
		builtin cd && ls
	else
		builtin cd "$1" && ls
	fi
}

fmv() {
	[ $# -ne 2 ] && return 1
	mv "$1" "$2" && cd "$2"
}

rname() {
	[ $# -ne 2 ] && {
		printf "\
Usage: rname SEDEXPR FILE\n
  where SEDEXPR is an extended regex sed expression\n"
		return 1
	}
	local newfile="$(echo "$2" | sed -E "$1")"
	[ -z "$newfile" ] && return 1
	mv "$2" "$newfile"
}

_jump-rm-first() {
	zle beginning-of-line
	zle delete-char-or-list
}

weather() {
	if [ -z "$1" ]; then
		curl wttr.in/Muenster
	else
		curl wttr.in/$1
	fi
}

mount_smb() {
    # $1: IP
    # $2: smb folder
	if (($# < 2)); then
		echo "Example Usage: mount_smb [IP] [SMB_SHARE_NAME]"
	else
            if [ ! -d "$2" ]; then
                echo "${DIR} does not exits"
                echo "mkdir -p $2"
                mkdir -p "$2"
            fi
		echo -n "password for smb user domi: "
		stty -echo
		read passwd
		stty echo
		echo
		sudo mount -t cifs //"$1"/"$2" "$2" -o username=domi,password="$passwd",workgroup=workgroup,iocharset=utf8,uid=dominic,gid=dominic
	fi
}
