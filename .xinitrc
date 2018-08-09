#!/bin/sh
# $Id: ~/.xinitrc wandsas 2018/01/03

# Keyboard
# German keyboard variants: nodeadkeys, deadacute, deadgraveacute
# Some convenient options are: terminate:ctrl_alt_bksp, ctrl:nocaps, grp:shift_caps_toggle, grp:menu_toggle, grp_led:scroll
# See man pages for setxkbmap and xkeyboard-config for more details
setxkbmap \
    -model pc105 \
    -layout de \
    -variant deadgraveacute \
    -option terminate:ctrl_alt_bksp

[ -s ~/.Xresources ] && xrdb -load ~/.Xresources

# Fonts
for dir in /usr/share/fonts/* /usr/local/share/fonts/* ~/.local/share/fonts/*; do
	[ -d "$dir" ] && xset fp+ "$dir"
done
unset dir
xset fp rehash

# Mouse speed
### fast
xset m 4 2
### normal
#  xset m 2 5
### slow
# xset m 1 1

# Cursor
xsetroot -cursor_name left_ptr

# Set DPI
xrandr --dpi 96

# Disable PC-Speaker
xset b off &

# Disable bell
xset -b

# Disable Screensaver & DPMS turning off the screen
xset s off
xset -dpms

# Key repeat
xset r rate 300 80

# xdg user-dirs
xdg-user-dirs-update
xdg-user-dirs-gtk-update

# Start i3 window-manager (wm) on tty1, fluxbox on tty2 and dwm on tty3
case "${1:-$(tty)}" in
    (i3*|*tty1)
        exec i3
        # FOR DEBUGGING;
        # exec i3 -V -d all >> ~/.log/i3.log
        ;;
    (fluxbox*|*tty2)
        exec startfluxbox
        ;;
    (dwm*|*tty3)
        exec dwm
        ;;
    (*)
        xterm -geometry 90x25-0-0
        ;;
esac

# vim:fenc=utf-8:ft=sh:
