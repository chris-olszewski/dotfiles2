xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

sleep 5

[[ -f ~/.Xresources ]] && xrdb -merge -I ~/.Xresources

sxhkd -c ~/.config/sxhkd/sxhkdrc &
exec bspwm
