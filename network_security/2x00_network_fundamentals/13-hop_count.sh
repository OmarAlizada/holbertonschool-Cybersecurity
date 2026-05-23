#!/bin/bash
traceroute -n "$1" 2>/dev/null | awk "$1 ~ /^[0-9]+\$/ {hop=\$1} END {printf "%s", hop}" | tr -d "\n"
