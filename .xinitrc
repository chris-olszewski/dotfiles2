xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

sleep 2

[[ -f ~/.Xresources ]] && xrdb -merge -I ~/.Xresources

urxvtd -q -f -o
sxhkd -c ~/.config/sxhkd/sxhkdrc &
exec bspwm
