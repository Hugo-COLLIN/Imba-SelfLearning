tag habit-group
	prop habits = []

	css .group tween:all 200ms ease 
		bgc: #fff p: 10px rd:lg 
		d: flex g:10px @xs:30px jc:center 
		shadow: 0 5px 15px black/20

	<self>
		<div.group>
			for habit in habits
				<habit-item name=habit.name done=habit.done>

tag habit-item
	prop name = "Untitled"
	prop done = false

	css button.edit fs:xxs c:ccoler4 @hover:blue5 bgc:transparent
	css input [type=text] w:100% c:cool5 ta:center rd:sm
	css .item tween:all 200ms ease
		c:cool5 fw:500
		fs:xs rd:md p:5px
		size:70px @xs:90px
		d:vflex ja:center g:5px
		bgc:cooler2
		&.done bgc:emerald5 c:white

	<self>
		<label .item .done=done>
			<input type="checkbox" checked=done>
			<div> name



imba.mount <habit-group habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>