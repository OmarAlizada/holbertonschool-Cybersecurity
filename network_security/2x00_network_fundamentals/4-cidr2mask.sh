#!/bin/bash
bits=$(printf "%032d" 0 | sed "s/0/1/g" | cut -c1-"$1")$(printf "%032d" 0 | cut -c1-$((32 - $1))); printf "%d.%d.%d.%d\n" "$((2#${bits:0:8}))" "$((2#${bits:8:8}))" "$((2#${bits:16:8}))" "$((2#${bits:24:8}))"
