#!/bin/bash

FREE=$(df -BG --output=avail / | tail -n1 | tr -d "G"," " )

if [ $FREE -lt 50 ]; then        # if free is less than approximately 10G

  echo "Disk Space Threshold Exceeded, Free Space available is $FREE GB" | ssmtp Mohammed.yousry510@gmail.com

fi;
