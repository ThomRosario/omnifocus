(* 
Enter
Command Control Right Arrow
Name 1 <enter>
Name 2 <enter>
Name 3 <escape>
*)

-- set teamMembers to {"Uty", "Robert", "Chuck", "Kim", "Erik", "Jason", "Hassan", "Lauretta", "Michael", "Brian", "Rashaan", "Chad"}
set teamMembers to {"Uty", "Robert"}
repeat with mbr in teamMembers
end repeat

Tell application "OmniFocus"
	tell front document
		set will autosave to false
		tell application "System Events" 
			keystroke return
			key code 124 using {control down, command down}
			keystroke "Uty"
			keystroke tab 
			keystroke tab 
			keystroke "Uty"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return
			keystroke "Robert" 
			keystroke tab 
			keystroke tab 
			keystroke "Robert"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Chuck" 
			keystroke tab 
			keystroke tab 
			keystroke "Chuck"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Kim" 
			keystroke tab 
			keystroke tab 
			keystroke "Kim"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Erik" 
			keystroke tab 
			keystroke tab 
			keystroke "Erik"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Jason" 
			keystroke tab 
			keystroke tab 
			keystroke "Jason"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Hassan" 
			keystroke tab 
			keystroke tab 
			keystroke "Hassan"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Lauretta" 
			keystroke tab 
			keystroke tab 
			keystroke "Lauretta"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Michael"
			keystroke tab 
			keystroke tab 
			keystroke "Michael"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Brian"
			keystroke tab 
			keystroke tab 
			keystroke "Brian"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Rashaan"
			keystroke tab 
			keystroke tab 
			keystroke "Rashaan"
			delay 1 
			keystroke return 
			keystroke return
			keystroke return 
			keystroke "Chad" 
			keystroke tab 
			keystroke tab 
			keystroke "Chad"
			delay 1 
			keystroke return 
			keystroke return
			key code 53
		end tell
		set will autosave to true
	End Tell
End Tell