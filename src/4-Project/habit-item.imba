import {icons} from "./icons"

tag habit-item
	prop name = "Untitled"
	prop done = false
	prop editing? = false

	css .actions d:flex jc:space-between
		button 
			fs:xxs c:cooler4 @hover:blue5 bgc:transparent px:0
			position:relative  # Assure un positionnement correct
			z-index:1  # Évite les conflits de z-index
			cursor:pointer
			border:none
			outline:none

	css input[type=text] 
		w:100% c:cool5 ta:center rd:sm
		position:relative
		z-index:1

	css .item tween:all 200ms ease
		c:cool5 fw:500
		fs:xs rd:md p:5px
		size:70px @xs:90px
		bgc:cooler2
		d:vflex g:5px ja:center
		bgc:cooler2
		position:relative  # Important !
		overflow:hidden  # Empêche le débordement des éléments enfants
		&.done bgc:emerald5 c:white

	<self>
		if editing?
			<div.item .done=done>
				<input type="text" bind=name>
		else
			<button .item .done=done 
				@click=emit("toggleItem", id)
				@click.alt=emit("deleteItem", id)
			>
				# <div> name
				<svg src=icons[name]..svg>

		<div.actions>
			<button.edit bind=editing?> if editing? then "Apply" else "Edit"
			<button @click=emit("deleteItem", id)> "Delete"