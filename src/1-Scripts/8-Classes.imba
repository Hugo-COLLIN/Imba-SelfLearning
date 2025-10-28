class Habit
	prop name
	prop done? = false
	prop createdAt

	constructor name
		name = name
		createdAt = Date.now!

	def toString
		"{if done? then "[x]" else "[ ]"} {name}"

	def toggle
		done? = !done?


const habit = new Habit "Exercise"
console.log habit.toString!
habit.toggle!
console.log habit.toString!
habit.toggle!
console.log habit.toString!