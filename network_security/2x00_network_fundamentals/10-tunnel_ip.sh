#!/bin/bash
ip addr show dev tun0 2>/dev/null | grep -oP "(?<=inet\s)\d+(\.\d+){3}" | tr -d "\n"
