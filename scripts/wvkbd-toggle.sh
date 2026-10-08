#!/bin/bash

if pgrep -x "wvkbd-mobintl" >/dev/null; then
  pkill -x "wvkbd-mobintl"
else
  wvkbd-mobintl --auto -L 240 -R 10 -l full,special
fi
