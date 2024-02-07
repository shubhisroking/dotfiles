# Merge X resources
xrdb -merge ~/.Xresources &

# Start the compositor, adjust screen color temperature, and enable screen locking
picom &
redshift -P -O 5000 &
xautolock -time 10 -locker slock &

# Start the notification daemon, clipboard manager, status bar, and set wallpaper
dunst &
greenclip daemon &
slstatus &
nitrogen --restore &

# Start the Polkit-GNOME authentication agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Set the keyboard repeat rate
xset r rate 300 50
