#!/usr/bin/env bash

active=$(tuned-adm active | awk -F ': ' '/^Current active profile:/ {print $2}')
selection=$(tuned-adm list | awk -v active="$active" '/^- / {printf "%s\t%s %s\n", $2, ($2 == active ? "*" : " "), $2}' | fzf --delimiter=$'\t' --with-nth=2 --header='Select TuneD profile (* = active)')
[[ -n $selection ]] && sudo tuned-adm profile "${selection%%$'\t'*}"
