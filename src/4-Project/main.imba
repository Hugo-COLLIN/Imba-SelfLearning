import {nanoid} from "nanoid"
import "./habit-group"
import "./habit-item"
import "./habit-adder"

tag dopamine-box
	prop habits = [
			{name: "Clean up", done: false, id:nanoid!}
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

		<habit-adder>

imba.mount <dopamine-box>