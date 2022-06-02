#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Timer
# @raycast.mode silent
# 
# Optional parameters:
# @raycast.icon ⏰
# @raycast.argument1 { "type": "text", "placeholder": "minutes" }
# @raycast.argument2 { "type": "text", "placeholder": "title", "optional": true }
# 
# Documentation:
# @raycast.description Set a timer
# @raycast.author Federico
# @raycast.authorURL https://github.com/0xfederama

seconds=$(( $1*60 ))
sleep $seconds
if [[ "$2" ]]; then
	osascript -e "display notification \"Your timer for $1 minutes has expired\" with title \"⏰⏰⏰\" subtitle \"$2\" sound name \"Glass\""
else
	osascript -e "display notification \"Your timer for $1 minutes has expired\" with title \"⏰⏰⏰\" sound name \"Glass\""
fi
