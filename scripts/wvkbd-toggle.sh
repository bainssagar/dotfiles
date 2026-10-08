#!/bin/bash

if pgrep -x "wvkbd-mobintl" >/dev/null; then
  pkill -x "wvkbd-mobintl"
else
  wvkbd-mobintl &
fi
