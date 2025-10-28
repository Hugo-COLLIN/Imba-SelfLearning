tag habit-item-11

	prop name = "Untitled"

	<self>
		<label>
			<input type="checkbox">
			<div> name

tag habit-group-11
	prop habits = []

	<self>
		for habit in habits
			<habit-item-11 name=habit>

imba.mount <habit-group-11 habits=["Exercise", "Clean up", "Learn Imba"]>