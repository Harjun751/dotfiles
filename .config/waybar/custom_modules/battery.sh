#!/usr/bin/env bash
BAT=/sys/class/power_supply/BAT1
capacity=$(cat "$BAT/capacity")
status=$(cat "$BAT/status")

# RED="#f7768e" # Tokyo Night red
RED="#F07A91"

# Filled slot count 0-10 (rounded)
filled=$(((capacity + 5) / 10))

bar=""
for ((i = 1; i <= 10; i++)); do
  if ((i <= filled)); then
    if ((i >= 9)); then
      bar+="<span color='$RED'>█</span>"
    else
      bar+="<span>█</span>"
    fi
  else
    bar+="░" # empty slots keep the module's default color
  fi
done

printf '{"text":"BAT: %s [%d%%]","class":"%s"}\n' "$bar" "$capacity" "none"
