#!/bin/bash

killall -q polybar
polybar -c ~/.config/polybar/bspwm top -r >>/tmp/polybar.log 2>&1 & disown
polybar -c ~/.config/polybar/bspwm bottom -r >>/tmp/polybar.log 2>&1 & disown
