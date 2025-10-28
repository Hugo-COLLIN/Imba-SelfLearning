# css body bgc:red # should not apply to the background but it does!!!
global css body bgc:#eee


tag habit-item-15
	prop name = "Untitled"
	prop done = false

	css label d:flex ai:center g:5px
		div bgc:purple
			span bgc:orange

	<self>
		<label>
			<input type="checkbox" checked=done>
			<span> "Not colored"
			<div> 
				name
				<span> "yay!"

tag habit-group-15
	prop habits = []

	css self # self is optional (default selector)
		bgc: #fff 
		p: 10px 
		rd: 5px 
		bd: 1px solid #ccc

	css label bgc: red # Styles are scoped!

	<self>
		<label> "Hello"
		for habit in habits
			<habit-item-15 name=habit.name done=habit.done>

imba.mount <habit-group-15 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>