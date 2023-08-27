xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrandr --output HDMI-1-2 --left-of DP-1-1
xrandr --output eDP-1-1 --left-of HDMI-1-2

if [ "$(xsetwacom list devices)" ]; then
  xsetwacom set 12 Button 2 "pan"
  xsetwacom set 12 PanScrollThreshold 200
  xsetwacom set 20 Button 2 "pan"
  xsetwacom set 20 PanScrollThreshold 200
  xsetwacom -v set 12 MapToOutput HEAD-2
fi

flameshot&

source ~/qtile/.venv/bin/activate
~/qtile/bin/qtile start
