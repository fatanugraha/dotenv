cat "$@" | jq -r ".url" | xargs -n 1 xdg-open
