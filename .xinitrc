xset fp+ ~/.fonts/fonts &
# exec dbus-launch xmonad

export PANEL_FIFO=/tmp/panel-fifo
sxhkd &
[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"
exec dbus-launch bspwm -s "$PANEL_FIFO" -p W
