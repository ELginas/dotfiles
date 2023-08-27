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

I: internet sometimes not working
F: sudo systemctl enable dhcpcd && sudo systemctl start dhcpcd (hopefully)

I: inaccurate time
F: timedatectl set-timezone Europe/Vilnius

I: nouveau driver still in use when nvidia drivers are installed, even after reboot
F: rmmod nouveau

/etc/X11/xorg.conf.d/10-tablet.conf

TODO:
- move modded qtile to AUR?
- nvidia drivers
- firefox better config
- installation scripts?
- try out official arch installation scripts
- proper helix setup on root
- try out wayland