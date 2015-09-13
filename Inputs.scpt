(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
This script uses loops through all the members of the team and creates an 
email to each of them with a list of all of the outstanding inputs needed 
from them.

Thom Rosario
9.13.2015
v 1.0 -- Initial functionality. 
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

set teamMembers to {{"Uty", "uthman.adediran@jhuapl.edu"}, ¬
					{"Chuck", "chuck.berry@jhuapl.edu"}, ¬
					{"Kim", "kim.drury@jhuapl.edu"}, ¬
					{"Erik", "Erik.Hasselbarth@jhuapl.edu"}, ¬
					{"Jason", "jason.prince@jhuapl.edu"}, ¬
					{"Hassan", "Hassan.Shonekan@jhuapl.edu"}, ¬
					{"Lauretta", "Lauretta.Skanes@jhuapl.edu"}, ¬
					{"Michael", "Michael.Tomassi@jhuapl.edu"}, ¬
					{"Brian", "Brian.Casto@jhuapl.edu"}, ¬
					{"Rashaan", "Rashaan.Green@jhuapl.edu"}, ¬
					{"Chad", "Chadrick.Whaley@jhuapl.edu"}, ¬
					{"Robert", "robert@jhuapl.edu"}}

repeat with mbrInfo in teamMembers
	set firstName to item 1 of mbrInfo
	set mailSubj to "Inputs from " & firstName
	set email to item 2 of mbrInfo
	set bodyContent to ""
	--display dialog firstName & " " & email
	tell application "OmniFocus"
		tell front document
			tell application "System Events"
				--Open this member's context
				keystroke "o" using {command down}
				delay 0.25
				keystroke firstName
				delay 0.5
				keystroke return	
				delay 0.25
				--Select & copy all their tasks
				keystroke "a" using {command down}
				delay 0.5
				keystroke "c" using {command down}
				delay 0.25
				set bodyContent to the clipboard
				--display dialog bodyContent
			end tell
		end tell
	end tell -- done w/ OmniFocus
	tell application "Mail"
		set newMsg to make new outgoing message with properties { ¬
			subject: mailSubj, ¬
			visible: true, ¬
			content: bodyContent ¬
		}
		tell newMsg
			make new to recipient with properties {name:firstName, address:email}
			-- send
		end tell
	end tell
end repeat