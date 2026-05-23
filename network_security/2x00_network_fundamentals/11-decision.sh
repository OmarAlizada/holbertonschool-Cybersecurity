#!/bin/bash
if ip route get "$1" 2>/dev/null | grep -q "via"; then printf "REMOTE"; else printf "LOCAL"; fi | tr -d "\n"
