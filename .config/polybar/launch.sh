#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
#polybar bottom -r&
polybar example -r&
echo "polybars started."

# vim: fenc=utf-8 ft=sh
