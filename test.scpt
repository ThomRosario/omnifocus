(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

--set teamMembers to {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
set teamMembers to {"Uty", "Robert"}

tell application "OmniFocus"
	tell front document
			set will autosave to false --increase responsiveness
			tell application "System Events"
				--Copy the name of the current task to the clipboard
				key code 53
				keystroke "c" using {command down}
				delay 0.5
				key code 53
				set taskName to the clipboard
				
				--create a new task and indent it
				keystroke return
				--Indent the task
				key code 124 using {control down, command down}
			end tell

			repeat with mbr in teamMembers
				--Loop through the entire team and add their name
				tell application "System Events"
					delay 0.25
					keystroke "Input from " & mbr & " about " & taskName
					keystroke tab 
					keystroke tab 
					keystroke mbr
					 --delay to allow time to pick the right context
					delay 0.25
					keystroke return 
					keystroke return
					--delay to allow time to create a new blank task
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