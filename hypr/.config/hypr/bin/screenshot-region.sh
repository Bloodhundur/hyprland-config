#!/bin/bash
wayshot -s "$(slurp -f '%x %y %w %h')" --stdout | wl-copy

