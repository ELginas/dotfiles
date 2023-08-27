xsetwacom set 12 Button 2 "pan"
xsetwacom set 12 PanScrollThreshold 200
xsetwacom set 20 Button 2 "pan"
xsetwacom set 20 PanScrollThreshold 200
xrandr --output HDMI2 --left-of DP1
xrandr --output eDP1 --left-of HDMI2
xsetwacom set 12 MapToOutput HDMI2

source ~/qtile/.venv/bin/activate
~/qtile/bin/qtile start
