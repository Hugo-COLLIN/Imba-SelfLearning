import {icons} from "./icons"

tag habit-item-30
	prop name = "Untitled"
	prop done = false
	prop editing? = false

	css .actions d:flex jc:space-between
		button fs:xxs c:cooler4 @hover:blue5 bgc:transparent border:none
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
			<button .item .done=done bind=done>
				<div> name
				<svg src=icons[name]..svg> # .. is to avoid error: don't try to access something on undefined
				# <svg src=import("./icon-graphics/{name}.svg")> # dynamic import not working
		
		<div.actions>
			<button.edit bind=editing?> if editing? then "Apply" else "Edit"
			<button @click=emit("deleteItem")> "Delete"