-- Testing out ability to use OmniFocus native AppleScript support
set teamMembers to {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
--set teamMembers to {"Uty", "Robert"}

tell application "OmniFocus"
	tell front document
		set will autosave to false
		tell application "System Events" 
			keystroke return
			key code 124 using {control down, command down}
		end tell
		repeat with mbr in teamMembers
			tell application "System Events"
				keystroke mbr
				keystroke tab 
				keystroke tab 
				keystroke mbr
				delay 0.5
				keystroke return 
				keystroke return
				delay 0.5
				keystroke return
			end tell
		end repeat
		set will autosave to true
	end tell
end tell