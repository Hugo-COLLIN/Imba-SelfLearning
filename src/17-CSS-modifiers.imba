global css 
	body 
		bgc:cool1
		# @landscape, @dark... create media-queries!
		# bgc@landscape:red5
		# bgc@dark: black
		# bgc@xs: red5 # extra-small breakpoint, sm, etc.
		bgc@300:purple8
		bgc@!300:red5
		c:gray8 
		fs:sm

tag habit-item-17
	prop name = "Untitled"
	prop done = false

	css label 
			d:vflex 
			ja:center 
			g:5px
			fs:xs 
			rd:md 
			size:70px @xs:90px
			c:cool5 
			fw:500
			bgc:cooler2 @hover:cooler3 @active:cooler4
			# bgc@hover:red5
		# div@hover
		# 	bgc:red5

	<self>
		<label>
			<input type="checkbox" checked=done>
			<div> name

tag habit-group-17
	prop habits = []

	css bgc: #fff 
		tween:all 200ms ease # smooth transition when css properties change 
		p: 10px 
		rd:lg 
		d: flex 
		g:10px @xs:30px
		jc:center 
		shadow: 0 5px 15px black/20

	<self>
		for habit in habits
			<habit-item-17 name=habit.name done=habit.done>

imba.mount <habit-group-17 habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>