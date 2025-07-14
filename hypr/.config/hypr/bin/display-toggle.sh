
# MONITOR="DP-3"
# MONITORLAPTOP="eDP-1"

MONITOR=$(hyprctl monitors | grep '^Monitor ' | awk '{print $2}')

CURRENT_RES=$(hyprctl monitors| grep -o -m 1 '[0-9]\+x[0-9]\+' | head -1)

if [[ "$MONITOR" == "eDP-1" ]]; then
	hyprctl keyword monitor "$MONITOR, preferred, auto, 1"

elif [[ "$CURRENT_RES" == "5120x1440" ]]; then
 hyprctl keyword monitor "$MONITOR, 2560x1440@240.00, 0x0, 1, bitdepth, 10"
else
  hyprctl keyword monitor "$MONITOR, 5120x1440@240.00, 0x0, 1, bitdepth, 10"
fi
# $CURRENT_RES"
