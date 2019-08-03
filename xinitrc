#!/bin/sh

##################################################
# source scripts in /etc/X11/xinit/xinitrc.d/

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


##################################################
# merge in defaults

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi


##################################################
# define keyboard shortcuts

setxkbmap \
    -option terminate:ctrl_alt_bksp \
    -option ctrl:nocaps


##################################################
# start window manager & other programs

xbindkeys

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# autosync clipboards
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

dwmstatus 2>&1 >/dev/null &

while true; do /usr/bin/dwm > /dev/null; done;

#& xclock -geometry 50x50-1+1
#& xterm -geometry 80x50+494+51
#& xterm -geometry 80x20+494-0
#exec xterm -geometry 80x66+0+0 -name login
