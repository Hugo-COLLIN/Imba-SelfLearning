import {icons} from "./icons"

tag habit-adder-30
	prop name = ""

	css bgc:cool2 p:10px rd:lg
		header fw:500 fs:xs mb:5px mt:-5px c:cool5
		section d:flex g:5px
		button bgc:indigo5 @hover:indigo6 c:white rd:sm px:5px
		div flex:1
			input w:100% px:5px rd:sm

	def handleSubmit e
		emit "habitAdded", name
		name = ""


	<self>
		# <div> JSON.stringify icons['objects_cleaning']
		<svg src=icons['objects_cleaning'].svg>
		<svg src=icons['people_agriculture'].svg>
		# <svg src=import("./icon-graphics/cleaning.svg")>
		<header> "Add habit"
		<section>
		<form @submit.prevent=handleSubmit>
			<div>
				<input type="text" bind=name placeholder="Habit name">
			<button> "Add"