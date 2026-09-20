#!/bin/bash

STATE_FILE="/tmp/noctalia_recording_state"

# Execute the Noctalia toggle command
noctalia msg plugin noctalia/screen_recorder:service all toggle

# Toggle the state file and send the corresponding notification
if [ -f "$STATE_FILE" ]; then
  rm "$STATE_FILE"
  notify-send "Screen Recorder" "Recording Stopped" -u normal
else
  touch "$STATE_FILE"
  notify-send "Screen Recorder" "Recording Started" -u critical
fi
