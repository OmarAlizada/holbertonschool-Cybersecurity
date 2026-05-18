#!/bin/bash
IFS=. read -r a b c d <<< "$1"; for o in "$a" "$b" "$c" "$d"; do bc <<< "obase=2; $o" | xargs printf "%08d"; done | sed 's/\([01]\{8\}\)\([01]\{8\}\)\([01]\{8\}\)\([01]\{8\}\)/\1.\2.\3.\4\n/'
