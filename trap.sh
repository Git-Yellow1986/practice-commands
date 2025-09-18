#!/bin/bash

trap 'echo "⚠️  మీరు Ctrl+C నొక్కారు, స్క్రిప్ట్ ఆగింది."' SIGINT

echo "Running... (Ctrl+C నొక్కి చూడండి)"
while true; do
  sleep 1
done
