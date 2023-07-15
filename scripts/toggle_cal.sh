#!/bin/bash
# toggle_cal.sh

PID_FILE="/tmp/cal.pid"

if [ -f "$PID_FILE" ]; then
  PID=$(cat "$PID_FILE")
  if ps -p $PID > /dev/null; then
    kill $PID
  fi
  rm "$PID_FILE"
else
  xterm -geometry 20x10+3410+10 -e bash -c "cal; read" &
  echo $! > "$PID_FILE"
fi
