#!/bin/bash

result=$(ps ax|grep -v grep|grep blueman-manager)
if [ "$result" == "" ]; then
  eval "blueman-manager & 
  blueman-tray &"
else
  eval "killall blueman-manager blueman-tray"
fi
