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
# to add in shell rc-file:
# tty-keepalive [<SECONDS>]
#
[ "$1" = -h ] && echo "usage: ${0##/} [<SECONDS>]" && exit 0
[ -t 1 ] || exit 0
SLEEP=${1-120}
TTY_CODE='\033]9;0\a' # Visual Bell
PTS=$(tty 2>/dev/null)
[ "$PTS" ] || exit 1
[ -w "$PTS" ] || exit 1
printf "$TTY_CODE" 2>/dev/null >"$PTS" || exit 0
PIDS=( $(pgrep -t ${PTS#/dev/} -x tty-keepalive 2>/dev/null) )
(( ${#PIDS[@]} > 1 )) && exit 
(
  trap exit SIGHUP
  while :; do
    sleep $SLEEP
    [ -w "$PTS" ] || break
    printf "$TTY_CODE" >"$PTS"
  done
) >/dev/null 2>&1 </dev/null &
