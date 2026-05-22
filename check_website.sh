#!/bin/bash

WEBSITE=${1:-google.com}

if ping -c 1 $WEBSITE > /dev/null; then
  echo "SUCCESS: $WEBSITE is reachable"
else
  echo "FAILURE: $WEBSITE is not reachable"
fi

