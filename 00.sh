#!/bin/bash

echo "\$COOKIE=$COOKIE"

if  [ -n "$COOKIE" ]; then
  today_num=$( date -d today +%d )
  curl -H "Cookie: session=$COOKIE" -s https://adventofcode.com/2025/day/$today_num/input -o input.txt
else
  exit -1
fi
