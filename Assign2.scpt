set teamMembers to {"Test1", "Test2"}

property childrenTitles : {"ALX", "CAL", "CHC", "MMM", "SIB"}
property includeParentTitle : false
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
			repeat with childTitle in childrenTitles
				if includeParentTitle then
					set childTitle to theParentName & ": " & childTitle
				end if
				set newTask to make new task with properties {name:childTitle} at after last task of rootTask
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

--tell application "OmniFocus"
--	tell front document
--		tell document window 1
--			set selectedTask to selected trees of content
--			set taskName to name of item 1 of selectedTask
--			display dialog taskName
--		end tell
--	end tell
--end tell
--
--tell application "System Events"
--	--create child task
--	keystroke return
--	delay 0.25
--	key code 124 using {control down, command down}
--end tell
--
--tell application "OmniFocus"
--	tell front document
--		tell document window 1
--			set selectedTask to selected trees of content
--			set name of item 1 of selectedTask to taskName
--		end tell
--	end tell
--end tell
--
