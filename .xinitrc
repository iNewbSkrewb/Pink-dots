#!/bin/sh

xrdb merge $HOME/.Xresources

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

$HOME/scripts/fixmonitors.sh
xrdb $HOME/.Xresources
picom -b --experimental-backends
$HOME/scripts/.fehbg Aenami
xsetroot -cursor_name left_ptr
export QT_QPA_PLATFORMTHEME="qt5ct"
mpd
exec bspwm
