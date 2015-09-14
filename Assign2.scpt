property teamMembers : {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
-- property teamMembers : {"Uty", "Robert"}
property includeParentTitle : true
property scriptSuiteName : "Thom’s Scripts"

tell application "OmniFocus"
	tell front document
		tell document window 1 -- (first document window whose index is 1)
			set theSelectedItems to selected trees of content
			if ((count of theSelectedItems) ≠ 1) then
				display alert "You must first select a task or project to add children to." message "Select a single task or project in the main outline." as warning
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
			display alert "You must select a task or project to add children to." message "Select a task or project in the main outline." as warning
			return
		end if
		
		set will autosave to false
		try
			repeat with mbr in teamMembers
				if includeParentTitle then
--					set mbr to theParentName & ": " & mbr
					--set mbr to theParentName
				end if
				set theContext to first flattened context where its name = mbr
				set newTask to make new task ¬
					with properties {name:theParentName, context:theContext} ¬
						at after last task of rootTask
				-- HEREDAMMIT
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
