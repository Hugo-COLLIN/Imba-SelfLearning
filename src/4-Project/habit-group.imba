tag habit-group
	prop habits = []

	css .group tween:all 200ms ease 
		bgc: #fff p: 10px rd:lg 
		d: flex g:10px @xs:30px jc:center 
		shadow: 0 5px 15px black/20

	<self>
		# <div> JSON.stringify habits
		<div.group>
			for habit, i in habits
				<habit-item
					key=habit.id
					id=habit.id
					bind:name=habit.name
					bind:done=habit.done
				>