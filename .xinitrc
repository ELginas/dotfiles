xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrandr --output DP-1-1 --right-of eDP-1-1

#xrandr --output HDMI-1-2 --left-of DP-1-1
#xrandr --output eDP-1-1 --left-of HDMI-1-2

if [ "$(xsetwacom list devices)" ]; then
  xsetwacom set 12 Button 2 "pan"
  xsetwacom set 12 PanScrollThreshold 200
  xsetwacom set 20 Button 2 "pan"
  xsetwacom set 20 PanScrollThreshold 200
  xsetwacom set 12 MapToOutput HEAD-2
fi

xsetroot -cursor_name arrow

flameshot&
alacritty -e fish -c setups&
exec ~/rust/penrose-rs/target/release/penrose-rs &> ~/rust/penrose-rs/.penrose.log
