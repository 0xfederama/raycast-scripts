#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Quit an app
# @raycast.mode silent
# 
# Optional parameters:
# @raycast.icon 🛑
# @raycast.argument1 { "type": "text", "placeholder": "app name" }
# 
# Documentation:
# @raycast.description Quit an app. Useful for menubar-only apps that require mouse clicks to quit
# @raycast.author Federico
# @raycast.authorURL https://github.com/0xfederama

osascript -e "quit app \"$1\""
