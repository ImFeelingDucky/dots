# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# Script to set XDG_RUNTIME_DIR to be able to use Sway without systemd / ConsoleKit
# Copied from wiki.gentoo.org/wiki/Sway
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700  "${XDG_RUNTIME_DIR}"
	fi
fi

source $HOME/.env

