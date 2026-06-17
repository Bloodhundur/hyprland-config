#!/bin/bash

set -e

test -d "$HOME/.config" || exit 1

arr=(hypr quickshell kitty)

for each in "${arr[@]}"; do
	rm -r ./$each
	mkdir -p ./$each
	cp -r "$HOME/.config/$each" .
done
