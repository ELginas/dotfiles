if status is-login; and test "$DISPLAY" = ""; and test "$XDG_VTNR" = "1"
    startx
end

abbr -a hx helix
set -x EDITOR helix
set -x GPG_TTY (tty)
fish_add_path ~/.cargo/bin
set PATH (string match -v "/home/user/qtile/.venv/bin" $PATH)
