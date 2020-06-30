while true; do
   xsetroot -name " bat: $(battery -c) $( date +"%F %R" )"
   sleep 1m
done &

feh --bg-scale $HOME/wallpapers/pic.png &

compton &
exec dwm
