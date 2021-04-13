scrot -s '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -target image/png -i $f'
notify-send -a "Screenshot" "Screenshot is now in clipboard!"
