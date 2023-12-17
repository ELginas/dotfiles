if status is-login; and test "$DISPLAY" = ""; and test "$XDG_VTNR" = "1"
    exec startx
end

abbr -a hx helix
set -x EDITOR helix
set -x GPG_TTY (tty)
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path /opt/cuda/bin/
set PATH (string match -v "/home/user/qtile/.venv/bin" $PATH)
