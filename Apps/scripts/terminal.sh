#!/bin/sh
SERVICE='x-terminal-emulator'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  wmctrl -xa $SERVICE
else
  $SERVICE
fi

