tag habit-adder
	prop name = "Untitled"

	css bgc:cool2 p:10px rd:lg
		header fw:500 fs:xs mb:5px mt:-5px c:cool5
		section d:flex g:5px
		button bgc:indigo5 @hover:indigo6 c:white rd:sm px:5px
		div flex:1
			input w:100% px:5px rd:sm

	<self>
		<header> "Add habit"
		<section>
			<div>
				<input type="text" bind=name>
			<button> "Add"