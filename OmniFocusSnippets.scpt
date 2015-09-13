

(*
			set currentTasks to ""
			repeat with singleTask in (flattened tasks whose completed is false)
				set currentTasks to currentTasks & "• " & name of singleTask & return
			end repeat
			--report 
*)
(*
			set currentTasks to flattened context named firstName
			set numTasks to number of tasks of currentTasks
			display dialog numTasks 
*)
