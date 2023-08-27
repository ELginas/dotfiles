systemctl --user enable pulseaudio.service
systemctl --user start pulseaudio.service

bug tracker:
- reddit massive spacing text
- tablet sometimes forgetting xsetwacom params
- spotify sometimes stops (didn't happen once when i was on mouse)
- qtile starting at laptop monitor
- browser discord time is scuffed (but qtile is fine)
- apple emojis on toolbar firefox
- discord emojis to be apple too
- spotify firefox response is a bit bad

fixed:
I: flameshot copy paste not working
F: make sure flameshot is started as a bg process

I: media keys not working
F: sudo pacman -S playerctl

/etc/X11/xorg.conf.d/10-tablet.conf