tag habit-group-20
	prop habits = []

	css .group tween:all 200ms ease 
		bgc: #fff p: 10px rd:lg 
		d: flex g:10px @xs:30px jc:center 
		shadow: 0 5px 15px black/20

	<self>
		<div.group>
			for habit in habits
				<habit-item-20 name=habit.name done=habit.done>

tag habit-item-20
	prop name = "Untitled"
	prop done = false
	prop editing? = false

	css button border:none
	css button.edit fs:xxs c:cooler4 @hover:blue5 bgc:transparent border:none
	css input[type=text] w:100% c:cool5 ta:center rd:sm
	css .item tween:all 200ms ease
		c:cool5 fw:500
		fs:xs rd:md p:5px
		size:70px @xs:90px
		bgc:cooler2
		d:vflex ja:center g:5px
		&.done bgc:emerald5 c:white

	<self>
		# <input type="checkbox" bind=done>
		if editing?
			<div.item .done=done>
				<input type="text" bind=name>
		else
			<button .item .done=done bind=done> # bind connects the state and the data values so they are synced
				<div> name
		
		<button.edit @click=(do editing? = !editing?)> if editing? then "Apply" else "Edit"

	# <self>
	# 	<div> done
	# 	<button .item .done=done bind=done> # bind connects the state and the data values so they are synced
	# 		# <input type="checkbox" bind=done>
	# 		if editing?
	# 			<input type="text" value=name bind=name>
	# 		else
	# 			<div> name
	# 	<button.edit @click=(do editing? = !editing?)> if editing? then "Apply" else "Edit"


imba.mount <habit-group-20 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>