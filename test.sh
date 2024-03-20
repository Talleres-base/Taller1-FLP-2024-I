#!/bin/bash

par=$1
result=$(racket "work-test-p"$par".rkt" 2>&1 > /dev/null)
if [ -z "$result" ]
then
  echo "Test succeeded"
else
  echo "Test failed with error: "$result
  exit 125
fi

