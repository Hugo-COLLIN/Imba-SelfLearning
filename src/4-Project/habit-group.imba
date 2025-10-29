tag habit-group
	prop habits = []

	css .group tween:all 200ms ease 
		bgc: #fff p: 10px rd:lg 
		d: flex g:10px @xs:30px jc:center 
		shadow: 0 5px 15px black/20

	css div.controls mt:10px d:flex jc:space-between
		button bgc:transparent td@hover:underline fs:xs color:blue5 cursor:pointer border:none

	def completeAll
		for habit in habits
			habit.done = yes

	def resetAll
		for habit in habits
			habit.done = no

	def deleteItem index
		habits.splice index, 1

	<self>
		<div.group>
			for habit, i in habits
				<habit-item
					bind:name=habit.name
					bind:done=habit.done
					@deleteItem=deleteItem(i)
				>
		<div.controls>
			<button @click=completeAll> "Complete all"
			<button @click=resetAll> "Reset all"