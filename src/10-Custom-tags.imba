tag habit-item

	prop name = "Untitled"

	def render # optional
		<self>
			<label>
				<input type="checkbox">
				<div> name


# imba.mount <div>
# 	<habit-item name="Exercise">
# 	<habit-item name="Clean up">
# 	<habit-item name="Learn Imba">

tag habit-group
	<self>
		<habit-item name="Exercise">
		<habit-item name="Clean up">
		<habit-item name="Learn Imba">

imba.mount <habit-group>