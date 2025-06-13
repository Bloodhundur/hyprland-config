
MONITOR="DP-3"

CURRENT_RES=$(hyprctl monitors| grep -o -m 1 '[0-9]\+x[0-9]\+' | head -1)

if [[ "$CURRENT_RES" == "5120x1440" ]]; then
 hyprctl keyword monitor "$MONITOR, 2560x1440@240.00, 0x0, 1, bitdepth, 10"
else
  hyprctl keyword monitor "$MONITOR, 5120x1440@240.00, 0x0, 1, bitdepth, 10"
fi
echo "$CURRENT_RES"

