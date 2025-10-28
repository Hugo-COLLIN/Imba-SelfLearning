global css body bgc:cool1 c:gray8 fs:sm
# Color
# - yellow
# - emerald
# - rose
# - sky
# - gray
# - cool (cool gray)
# - cooler (cooler gray)
# - warm (warm gray)
# - warmer (warmer gray)
#
# + Number from 1 to 8 (Tailwind-CSS inspired)


tag habit-item-16
	prop name = "Untitled"
	prop done = false

	css label d:vflex ja:center g:5px
		# display:vflex = d:flex + flex-direction:column
		# ja:center = jc:center + ai:center
		bgc:cooler2 fs:xs rd:md size:70 c:cool5 fw:500
		# padding: 5px

	<self>
		<label>
			<input type="checkbox" checked=done>
			<div> name

tag habit-group-16
	prop habits = []

	css bgc: #fff p: 10px rd:lg 
		d: flex g:10px jc:center 
		shadow: 0 5px 15px black/20 # color/opacity, equivalent to rgba(0, 0, 0, 0.2)
		# shadow: y-offset x-offset blur color 

	<self>
		for habit in habits
			<habit-item-16 name=habit.name done=habit.done>

imba.mount <habit-group-16 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>