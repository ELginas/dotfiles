xrandr --output HDMI2 --left-of DP1
xrandr --output eDP1 --left-of HDMI2

if [ "$(xsetwacom list devices)" ]; then
  xsetwacom set 12 Button 2 "pan"
  xsetwacom set 12 PanScrollThreshold 200
  xsetwacom set 20 Button 2 "pan"
  xsetwacom set 20 PanScrollThreshold 200
  xsetwacom set 12 MapToOutput HDMI2
fi

flameshot&

source ~/qtile/.venv/bin/activate
~/qtile/bin/qtile start
