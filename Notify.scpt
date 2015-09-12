(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
This script uses TextExpander to paste the OmniFocus tasks I've copied to the
clipboard into a new email and send the email to the chosen team member

Thom Rosario
9.11.2015
v 1.0 -- Initial functionality. 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

tell application "OmniFocus"
	tell front document
		tell application "System Events"
			--Copy all of the tasks to the clipboard
			keystroke "a" using {command down}
			delay 0.25
			keystroke "c" using {command down}
		end tell
	end tell
end tell

tell application "Mail"
	activate
	delay 1
	tell application "System Events"
		keystroke "n" using {command down}
		keystroke ";tickler"
	end tell
end tell