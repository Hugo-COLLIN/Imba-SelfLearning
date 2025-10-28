tag habit-item

	prop name = "Untitled"

	<self>
		<label>
			<input type="checkbox">
			<div> name

tag habit-group
	prop habits = []

	<self>
		for habit in habits
			<habit-item name=habit>

imba.mount <habit-group habits=["Exercise", "Clean up", "Learn Imba"]>