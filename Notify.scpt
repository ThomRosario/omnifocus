(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
This script is a really dirty way of creating a task assigned to every team
member based on the currently selected OmniFocus task.

Thom Rosario
thom.rosario@jhuapl.edu
9.8.2015
v 1.0 -- Initial functionality.  I will eventually edit this to use OmniFocus-
         native AppleScript objects.  Using System Events is fraught with 
         danger and really unreliable.  That's why I have to have so many 
         delays and ridiculous key codes.
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