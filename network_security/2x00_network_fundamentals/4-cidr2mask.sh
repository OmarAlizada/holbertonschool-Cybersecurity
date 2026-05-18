#!/bin/bash
vals=(255 255 255 255 0); mask=$((0xffffffff << (32 - $1))); [ "$1" -eq 0 ] && echo "0.0.0.0" || printf "%d.%d.%d.%d\n" $(( (mask >> 24) & 255 )) $(( (mask >> 16) & 255 )) $(( (mask >> 8) & 255 )) $(( mask & 255 ))
