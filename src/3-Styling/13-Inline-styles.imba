tag habit-item-13
	prop name = "Untitled"
	prop done = false
	<self>
		<label[display:flex align-items:center gap:5px]>
			<input type="checkbox" checked=done>
			<div> name

tag habit-group-13
	prop habits = []
	<self [
		background-color: #eee
		padding: 10px
		border-radius: 5px
		border: 1px solid #ccc
	]>
		for habit in habits
			<habit-item-13 name=habit.name done=habit.done>

imba.mount <habit-group-13 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>