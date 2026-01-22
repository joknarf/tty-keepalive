#!/bin/bash
#
# tty-keepalive
# 
# simulate tty activity in background to prevent 
# stale connection (firewall timeout...)
# 
# Author: joknarf
#
# tty-keepalive sends an OSC visual bell each <SECONDS>
# (totally ignored by most tty emulators)
# exits when pseudo tty dies
#
# usage: tty-keepalive [<SECONDS>]
#
# in shell rc-file:
# [ -t 1 ] && tty-keepalive [<SECONDS>]
#
[ "$1" = -h ] && echo "usage: ${0##/} [<SECONDS>]" && exit 0

SLEEP=${1-120}
PTS=$(tty)

(
  while :; do
    sleep $SLEEP
    [ -e "$PTS" ] || break
    printf '\033]9;0\a' >"$PTS"
  done
) &
