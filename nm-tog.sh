#!/bin/bash

result=$(ps ax|grep -v grep|grep nm-applet)
if [ "$result" == "" ]; then
  eval "nm-applet"
else
  eval "killall nm-applet"
fi
