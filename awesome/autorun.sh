#!/usr/bin/env sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}


run "xrandr [--output --DisplayPort-1 --mode 1920x1080 --rate 240 --right-of DisplayPort-2]"
run "xrandr --output --DisplayPort-2 --mode 1920x1080 --rate 120"
