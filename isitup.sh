#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Is It Up?
# @raycast.mode silent
# 
# Optional parameters:
# @raycast.icon 🔌
# @raycast.argument1 { "type": "text", "placeholder": "website" }
# 
# Documentation:
# @raycast.description Check if a website is up or down
# @raycast.author Federico
# @raycast.authorURL https://github.com/0xfederama

isitdown=$(curl -s "https://isitdown.site/api/v3/$1" | python3 -c "import sys, json; print(json.load(sys.stdin)['isitdown'])")
if [[ $isitdown == "False" ]]; then
	echo "The website \"$1\" is up 🟢"
else
	echo "The website \"$1\" is down 🔴"
fi
