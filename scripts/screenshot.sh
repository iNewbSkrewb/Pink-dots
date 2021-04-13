scrot -z '%Y-%m-%d_%H-%M.png' -e 'xclip -selection clipboard -target image/png -i $f ; dunstify -I $f "Scrot" "Fullscreen screenshot saved" ; mv $f ~/Pictures/Screensots'
