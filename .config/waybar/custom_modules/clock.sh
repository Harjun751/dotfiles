#!/usr/bin/env bash
# clock.sh — Waybar clock with time-of-day sun/moon icons (Nerd Font).
# Phase boundaries (24h). Adjust to taste.
SUNRISE=5 # 05:00-05:59 -> sunrise icon
SUNSET=18 # 18:00-18:59 -> sunset icon

h=$(date +%-H)
if ((h >= SUNRISE && h < 6)); then
  icon="󰖜"
  cls="sunrise" # md-weather_sunset_up
elif ((h >= 6 && h < SUNSET)); then
  icon="󰖙"
  cls="day" # md-weather_sunny
elif ((h >= SUNSET && h < 19)); then
  icon="󰖛"
  cls="sunset" # md-weather_sunset_down
else
  icon="󰖔"
  cls="night"
fi # md-weather_night

printf '{"text":"%s %s","class":"%s"}\n' "$icon" "$(date "+%d %b, %a %H:%M")" "$cls"
