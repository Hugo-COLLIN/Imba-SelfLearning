tag habit-item-10

	prop name = "Untitled"

	def render # optional
		<self>
			<label>
				<input type="checkbox">
				<div> name


# imba.mount <div>
# 	<habit-item-10 name="Exercise">
# 	<habit-item-10 name="Clean up">
# 	<habit-item-10 name="Learn Imba">

tag habit-group-10
	<self>
		<habit-item-10 name="Exercise">
		<habit-item-10 name="Clean up">
		<habit-item-10 name="Learn Imba">

imba.mount <habit-group-10>