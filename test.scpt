-- Testing out ability to use OmniFocus native AppleScript support
tell application "OmniFocus"
	tell front document
		set will autosave to false
		Set theContext to first flattened context where its name = "Uty"
		make new inbox task with properties {name:"Uty", context:theContext}
		set will autosave to true
	end tell
end tell