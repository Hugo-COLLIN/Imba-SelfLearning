tag habit-item-14
	prop name = "Untitled"
	prop done = false # done? not working!
	<self>
		<label[d:flex ai:center g:5px]>
			<input type="checkbox" checked=done>
			<div> name

tag habit-group-14
	prop habits = []
	<self [bgc: #eee p: 10px rd: 5px bd: 1px solid #ccc]>
		for habit in habits
			<habit-item-14 name=habit.name done=habit.done>

imba.mount <habit-group-14 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>