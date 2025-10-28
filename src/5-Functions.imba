def createHabit name = "h", done = false
	const timestamp = Date.now!
	# return {name: name, done: done, createdAt: timestamp}
	{name: name, done: done, createdAt: timestamp} 
	# always returns the last line, so return is optional


def prettyHabit habit
	"[{check habit}] {habit.name}"

def check habit do if habit.done then "x" else " "

# console.log createHabit("Clean up")
# console.log createHabit! "Clean up"
# console.log createHabit "Clean up"
# All 3 seems equivalent

console.log prettyHabit createHabit "Clean up", true

# -------------------
# Challenge:

const myHabits = [ 
	createHabit 'exercise', true
	createHabit 'study', false
	createHabit 'clean up', true
	createHabit 'yay', true
]

printHabits myHabits

def printHabits habitsList
	for habit in habitsList
		console.log prettyHabit habit
