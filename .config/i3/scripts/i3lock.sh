#!/bin/bash

# Required:
# [betterlockscreen] (https://github.com/pavanjadhaw/betterlockscreen)
# [i3lock-color] (https://github.com/PandorasFox/i3lock-color)

i3lock_setup ()
    betterlockscreen -u ~/.wallpapers/grml-cable-0.4.jpg -r 1920x1080 -b 0.5
}

i3lock_lock_screen () {
    betterlockscreen --lock
}

# vim:fenc=utf-8:ft=sh:
