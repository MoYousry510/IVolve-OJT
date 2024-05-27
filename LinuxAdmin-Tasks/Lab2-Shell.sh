#!/bin/bash

FREE='df -k --output=avail "$PWD" | tail -n1'

if [[ FREE -lt 10000000 ]]; then        # if free is less than approximately 10G

  echo "Threshold Exceeded"
  
fi;
