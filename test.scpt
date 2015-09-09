(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

set teamMembers to {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
--set teamMembers to {"Uty", "Robert"}

tell application "OmniFocus"
	tell front document
		--increase responsiveness by disabling autosave
		set will autosave to false
		tell application "System Events"
			--Copy the name of the current task to the clipboard
			key code 53
			delay 0.5
			keystroke "c" using {command down}
			key code 53
			set taskName to the clipboard			
			--create a new task and indent it
			keystroke return
			key code 124 using {control down, command down}
		end tell
		repeat with mbr in teamMembers
			--Loop through the entire team and add their name
			tell application "System Events"
				delay 0.25
				keystroke taskName
				delay 1
				keystroke ":  "
				keystroke mbr
				keystroke tab
				delay 0.2 
				keystroke tab
				delay 0.2
				keystroke mbr
				delay 0.3
				keystroke return 
				keystroke return
				delay 0.3
				keystroke return
			end tell
		end repeat
		tell application "System Events"
			--need to delete the last line I don't want
			key code 53
			key code 51
		end tell
		set will autosave to true 
	end tell --done w/ the front OmniFocus window
end tell --done w/ OmniFocus