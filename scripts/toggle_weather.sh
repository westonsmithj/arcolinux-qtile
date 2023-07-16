#!/bin/bash
# toggle_weather.sh

PID_FILE="/tmp/weather.pid"

if [ -f "$PID_FILE" ]; then
  PID=$(cat "$PID_FILE")
  if ps -p $PID > /dev/null; then
    kill $PID
  fi
  rm "$PID_FILE"
else
  xterm -geometry 125x40+3410-300 -e bash -c "curl wttr.in; read" &
  echo $! > "$PID_FILE"
fi
