if status is-login; and test "$DISPLAY" = ""; and test "$XDG_VTNR" = "1"
    exec startx
end

abbr -a hx helix
abbr -a pa pacman
set -x EDITOR helix
set -x GPG_TTY (tty)
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path /opt/cuda/bin/
abbr -a -- cb 'cargo c && cargo b --release'
set -x ANDROID_NDK ~/Android/Sdk/ndk/26.1.10909125/
set -x ANDROID_HOME ~/Android/Sdk/
bind \co 'for cmd in less more; if command -q $cmd; fish_commandline_append " &| $cmd"; break; end; end'

