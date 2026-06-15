#!/bin/bash

# a list of mandatory packages to install on a fresh system for config files to work

# basic first lines of interfaces
sudo pacman -Sy hyprlock kitty swaync hyprpaper hyprlock rofi quickshell

# important audio and display stuff
sudo pacman -Sy brightnessctl pipewire pipewire-alsa libpipewire libwireplumber pipewire-audio pipewire-jack pipewire-pulse pipewire-session-manager wireplumber pavucontrol

# tools
sudo pacman -Sy firefox slurp wl-clipboard

# performance 
sudo pacman -Sy power-profiles-daemon gobject-introspection python-gobject 

# coding related
sudo pacman -Sy rust
