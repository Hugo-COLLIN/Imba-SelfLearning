tag habit-item-12

	prop name = "Untitled"
	prop done = false # done? not working!

	<self>
		<label>
			<input type="checkbox" checked=done>
			# (if done then <s> else <div>) name
			if done then <s> name else <span> name

tag habit-group-12
	prop habits = []

	<self>
		console.log habits
		for habit in habits
			# <habit-item name=habit.name> unless habit.done
			<habit-item-12 name=habit.name done=habit.done>
		<div> if false
			"It's false!"
		else 
			"else!"

imba.mount <habit-group-12 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>