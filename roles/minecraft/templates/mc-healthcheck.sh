#!/bin/bash

SCREEN_NAME='minecraft-server'

if ! screen -list | grep -q "${SCREEN_NAME}"; then
  printf 'server down'
  curl -fsS -m 10 --retry 3 -o /dev/null "{{ mc_health }}/fail"
else
  printf 'server up'
  curl -fsS -m 10 --retry 3 -o /dev/null "{{ mc_health }}"
fi
