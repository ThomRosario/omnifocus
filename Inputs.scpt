(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
This script uses TextExpander to paste the OmniFocus tasks I've copied to the
clipboard into a new email and send the email to the chosen team member

Thom Rosario
9.12.2015
v 1.0 -- Initial functionality. 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

--set teamMembers to {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
set teamMembers to {{"Uty", "uthman@jhuapl.edu"}, 
					{"Robert", "robert@jhuapl.edu"}}
repeat with mbrInfo in teamMembers
	set firstName to item 1 of mbrInfo
	set email to item 2 of mbrInfo
	tell application "OmniFocus"
		tell front document
			tell application "System Events"
				--Open this member's context
				keystroke "o" using {command down}
				delay 0.25
				keystroke firstName
				delay 0.25
				key code 35 --enter key
				delay 0.25
				keystroke "a" using {command down}
				delay 0.25
				keystroke "c" using {command down}
			end tell
		end tell
	end tell -- done w/ OmniFocus
	tell application "Mail"
		activate
		delay 1
		tell application "System Events"
			keystroke "n" using {command down}
			keystroke ";tickler"
		end tell
	end tell
end repeat

