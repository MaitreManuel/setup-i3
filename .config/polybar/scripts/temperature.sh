#!/bin/sh

sensors | grep Core | awk '{print substr($3, 2, length($3)-6)}' | head -n 1 | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//'
