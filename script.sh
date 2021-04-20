#!/bin/bash

sleep 5; echo 'tell application "System Events" to keystroke "'$(pbpaste)'"' | osascript