#!/bin/bash
setsid sh -c '
if pgrep -x "wlsunset" > /dev/null; then
    pkill wlsunset
else
    wlsunset -T 3501 -t 3500 &
fi
' &
exit 0
