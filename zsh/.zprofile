if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    if [[ ! -f /tmp/tty1_logged_in ]]; then
        touch /tmp/tty1_logged_in
        Hyprland &>/dev/null

        rm /tmp/tty1_logged_in
        pkill -KILL -u $USER
    fi
fi
