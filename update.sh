#!/bin/bash

set -e

test -d "$HOME/.config" || exit 1

arr=(hypr waybar kitty)

for each in "${arr[@]}"; do
	cp -r "$HOME/.config/$each" .
done
