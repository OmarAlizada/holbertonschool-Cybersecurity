#!/bin/bash
mask=$((0xffffffff ^ (1 << (32 - $1)) - 1)); echo "$(( (mask >> 24) & 255 )).$(( (mask >> 16) & 255 )).$(( (mask >> 8) & 255 )).$(( mask & 255 ))" | tr -d "[:space:]" | sed "s/$/\n/"
