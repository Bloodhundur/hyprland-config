if [ -f "$HOME/.config/hypr/settings/gamemode-enabled" ]; then
    # TURN OFF (restore normal)
    hyprctl --batch "\
        keyword animations:enabled 1;\
        keyword decoration:shadow:enabled 1;\
        keyword decoration:blur:enabled 1;\
        keyword general:gaps_in 5;\
        keyword general:gaps_out 20;\
        keyword general:border_size 2;\
        keyword decoration:rounding 10"

    rm "$HOME/.config/hypr/settings/gamemode-enabled"
    notify-send "Gamemode deactivated" "Animations and blur enabled"

else
    # TURN ON (performance mode)
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:shadow:enabled 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 0;\
        keyword decoration:rounding 0"

    touch "$HOME/.config/hypr/settings/gamemode-enabled"
    notify-send "Gamemode activated" "Performance mode enabled"
fi
