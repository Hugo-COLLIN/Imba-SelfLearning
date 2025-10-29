# 1 main file to reference all the tags used everywhere in the project
import "./habit-group"
import "./habit-item"


imba.mount <habit-group habits=[
	{name: "Clean up", done: false}
	{name: "Exercise", done: false}
	{name: "Study", done: true}
	{name: "Learn Imba", done: false}
]>