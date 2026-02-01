#!/bin/bash
set -e

test -d "$HOME/.config" || exit 1

yes_all=false

for item in */; do
  test "$item" = ".git/" && continue

  dest="$HOME/.config/$item"

  if [[ -d "$dest" && "$yes_all" = false ]]; then
    echo "Directory $item already exists in ~/.config"
    echo "Overwrite? [y]es / [n]o / [ya] yes to all"
    read -r answer

    case "$answer" in
      ya)
        yes_all=true
        ;;
      y)
        ;;
      *)
        echo "Skipping $item"
        continue
        ;;
    esac
  fi

  echo "Cloning $item to ~/.config"
  cp -a "$item" "$HOME/.config/"
done

