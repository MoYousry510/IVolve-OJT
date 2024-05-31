#!/bin/bash

<<<<<<< HEAD
FREE=$(df -BG --output=avail / | tail -n1 | tr -d "G"," " )

if [ $FREE -lt 10 ]; then        # if free is less than approximately 10G

  echo "Disk Space Threshold Exceeded, Free Space available is $FREE GB"
=======
FREE='df -k --output=avail "$PWD" | tail -n1'

if [[ FREE -lt 10000000 ]]; then        # if free is less than approximately 10G

  echo "Threshold Exceeded"
>>>>>>> origin/master
  
fi;
