bdwmb -q &
feh --bg-fill /usr/share/backgrounds/dwm.png &
[[ ! -f ~/.dwm/.docs_lock ]] && (st -e ~/.dwm/scripts/docs.sh; touch ~/.dwm/.docs_lock) &
xautolock -time 10 -locker /usr/local/bin/dwmlocker &

