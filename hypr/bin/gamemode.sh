if [ -f $HOME/.config/hypr/settings/gamemode-enabled ]; then
	rm -r ~/.config/hypr/settings/gamemode-enabled
    hyprctl reload
    notify-send "Gamemode deactivated" "Animations and blur enabled"
else
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:shadow:enabled 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 0;\
        keyword decoration:rounding 0"
    touch ~/.config/hypr/settings/gamemode-enabled
fi
