on numberAsKeycode(theString)
  tell application "System Events"
    repeat with currentChar in (every character of theString)
      set cID to id of currentChar
      if ((cID ≥ 48) and (cID ≤ 57)) then
        key code {item (cID - 47) of {29, 18, 19, 20, 21, 23, 22, 26, 28, 25}}
      else
        keystroke currentChar
      end if
      delay 0.01
    end repeat
  end tell
end numberAsKeycode

set texttowrite to the clipboard
delay 5
numberAsKeycode(texttowrite)