# 1 main file to reference all the tags used everywhere in the project
import "./habit-group"
import "./habit-item"

tag dopamine-box
	prop habits = [
			{name: "Clean up", done: false}
			{name: "Exercise", done: false}
			{name: "Study", done: true}
			{name: "Learn Imba", done: false}
		]

	css div.controls mt:10px d:flex jc:space-between
		button bgc:transparent td@hover:underline fs:xs color:blue5 cursor:pointer border:none

	def completeAll
		for habit in habits
			habit.done = yes

	def resetAll
		for habit in habits
			habit.done = no


	<self>
		<habit-group habits=habits>
		<div.controls>
			<button @click=completeAll> "Complete all"
			<button @click=resetAll> "Reset all"


imba.mount <dopamine-box>