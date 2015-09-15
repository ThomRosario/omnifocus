(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
This script creates one subtask for every team member based on the currently 
selected task and assigns it the same Context as it's parent

Thom Rosario
9.15.2015
v 1.0 -- Initial functionality.
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

property teamMembers : {"Uty", "Robert", "Chuck", "Kim", "Erik",¬
						"Jason", "Hassan", "Lauretta", "Michael", ¬
						"Brian", "Rashaan", "Chad"}
--property teamMembers : {"Uty", "Robert"}
property includeParentTitle : true
property scriptSuiteName : "Thom’s Scripts"

tell application "OmniFocus"
	tell front document
		tell document window 1
			set theSelectedItems to selected trees of content
			if ((count of theSelectedItems) ≠ 1) then
				display alert "You must first select a task or project to add children to." ¬
					message "Select a single task or project in the main outline." as warning
				return
			end if
		end tell		
		set selectedItem to value of item 1 of theSelectedItems
		set theParentName to name of item 1 of theSelectedItems
		set rootTask to selectedItem
		if (class of rootTask is project) then
			set rootTask to root task of selectedItem
		end if
		if (class of rootTask is not task) then
			display alert "You must select a task or project to add children to." ¬
				message "Select a task or project in the main outline." as warning
			return
		end if		
		set will autosave to false
		try
			repeat with mbr in teamMembers
				if includeParentTitle then
					set taskName to theParentName & ":  " & mbr
				end if
				set newTask to make new task ¬
					with properties {name:taskName} ¬
						at after last task of rootTask
			end repeat
		on error errStr number errorNumber
			set will autosave to true
			error errStr number errorNumber
		end try		
		my notify("Children Added", "You may need to go to Projects to see the new children.")		
	end tell
end tell

(*
	Uses Notification Center to display a notification message.
	theTitle – a string giving the notification title
	theDescription – a string describing the notification event
*)
on notify(theTitle, theDescription)
	display notification theDescription with title scriptSuiteName subtitle theTitle
end notify
