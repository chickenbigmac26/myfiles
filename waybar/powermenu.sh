#!/usr/bin/env bash

# Define menu options
entries="Shutdown\nReboot\nHibernate"

# Launch rofi positioned at the top-right
selected=$(echo -e "$entries" | rofi \
  -dmenu \
  -normal-window \
  -p "Power" \
  -theme ~/.config/waybar/powermenu.rasi)

# Execute action based on selection
case $selected in
    *"Shutdown")
        shutdown now ;;
    *"Reboot")
        reboot ;;
    *"Suspend")
        systemctl suspend ;;
    *"Hibernate")
        systemctl hibernate ;;
esac
