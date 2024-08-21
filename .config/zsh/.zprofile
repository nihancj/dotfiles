printf "start"
if [ -f /run/tmpfiles.d/logged_in_once ]; then
	exec $($HOME/scripts/session-picker.sh)
else
	doas touch /run/tmpfiles.d/logged_in_once
	exec $($HOME/scripts/session-picker.sh $DEFAULT_SESSION_NAME)
fi

# [[ ! $DISPLAY && $XDG_VTNR -eq 2 ]] && sx "$XINITRC.qtile" >/dev/null
# [[ ! $DISPLAY && $XDG_VTNR -eq 3 ]] && sx "$XINITRC.openbox" >/dev/null

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx /usr/local/bin/dwm  # remove the exec to remain logged in when your wm ends
#elif [[ ! $DISPLAY && $XDG_VTNR -eq 2 ]]; then
#  exec startx /usr/bin/openbox  # remove the exec to remain logged in when your wm ends
#fi
