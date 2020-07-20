function vpn_status () (
	if [[ $(vpn -s) ]]; then
		echo "vpn: $(vpn -s) "
	fi
)

while true; do
   xsetroot -name " $(vpn_status)$( date +"%F %R" )"
   sleep 1s
done &

feh --bg-scale $HOME/wallpapers/structure_glow_points.jpg &

setxkbmap -layout us -variant altgr-intl
compton &
exec dwm
