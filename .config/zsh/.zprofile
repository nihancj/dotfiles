[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && sx "$XINITRC" >/dev/null ; logout

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx /usr/local/bin/dwm  # remove the exec to remain logged in when your wm ends
#elif [[ ! $DISPLAY && $XDG_VTNR -eq 2 ]]; then
#  exec startx /usr/bin/openbox  # remove the exec to remain logged in when your wm ends
#fi
