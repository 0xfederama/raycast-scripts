#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open a website
# @raycast.mode silent
# 
# Optional parameters:
# @raycast.icon 🌐
# @raycast.argument1 { "type": "text", "placeholder": "website" }
# 
# Documentation:
# @raycast.description Directly open a website in the default browser
# @raycast.author Federico
# @raycast.authorURL https://github.com/0xfederama

open "https://$1"
