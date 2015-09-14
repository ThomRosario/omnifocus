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
--set teamMembers to {{"Uty", "uthman.adediran@jhuapl.edu"}, ¬
--					{"Robert", "robert@jhuapl.edu"}}
set emailSig to return & return & ¬
				 "--" & return & ¬
				 "Thom Rosario" & return & ¬
				 "Section Supervisor" & return & ¬
				 "Operations & Infrastructure" & return & ¬
				 "Asymmetric Operations" & return & ¬
				 "The Johns Hopkins University Applied Physics Laboratory" & return & ¬
				 "Office:  240.228.7376" & return & ¬
				 "Mobile:  410.709.8466" & return & ¬
				 "Thom.Rosario@jhuapl.edu"
repeat with mbrInfo in teamMembers
	set firstName to item 1 of mbrInfo
	set mailSubj to "Inputs from " & firstName
	set email to item 2 of mbrInfo
	set bodyContent to ""
	set salutation to firstname & " --" & return & ¬
		"Below is a list of items I still need your input on." & return & return 
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
				key code 125 -- arrow down
				delay 0.1
				key code 125 using {command down, option down, shift down}
				delay 0.5
				keystroke "c" using {command down}
				delay 0.25
				set bodyContent to the clipboard
			end tell
		end tell
	end tell -- done w/ OmniFocus
	tell application "Mail"
		set emailBody to salutation & bodyContent & emailSig
		set newMsg to make new outgoing message with properties { ¬
			subject: mailSubj, ¬
			visible: true, ¬
			content: emailBody}
		tell newMsg
			make new to recipient with properties {name:firstName, address:email}
			-- send
		end tell
	end tell
end repeat