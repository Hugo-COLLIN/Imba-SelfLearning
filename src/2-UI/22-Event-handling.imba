tag habit-group-22
	prop habits = []

	css .group tween:all 200ms ease 
		bgc: #fff p: 10px rd:lg 
		d: flex g:10px @xs:30px jc:center 
		shadow: 0 5px 15px black/20

	css div.controls mt:10px d:flex jc:space-between
		button bgc:transparent td@hover:underline fs:xs color:blue5 cursor:pointer border:none

	def foo
		console.log "Hey, bar!"

	def completeAll
		for habit in habits
			habit.done = yes

	def resetAll
		for habit in habits
			habit.done = no

	<self>
		# <button @click=console.log("Clicked") [mb:10px]> "Press me" 
		<button @click=foo [mb:10px]> "Press me" 
		<div.group>
			for habit in habits
				<habit-item-22 
					bind:name=habit.name # add bind: before the prop to sync it between parent and child component
					bind:done=habit.done
				>
		<div.controls>
			<button @click=completeAll> "Complete all"
			<button @click=resetAll> "Reset all"
		

tag habit-item-22
	prop name = "Untitled"
	prop done = false
	prop editing? = false

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
		if editing?
			<div.item .done=done>
				<input type="text" bind=name>
		else
			<button .item .done=done bind=done> # bind connects the state and the data values so they are synced
				<div> name
		
		<button.edit @click=(do editing? = !editing?)> if editing? then "Apply" else "Edit"


imba.mount <habit-group-22 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>