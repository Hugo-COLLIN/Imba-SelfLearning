let myHabits = [ 
	'exercise'
	'study'
	'clean up'
	'yay'
]

for habit, index in myHabits
	console.log "{index + 1}: {habit}"
	# console.log index + 1 + ": " + habit

for num in [0...5]
	console.log num


# --------------
# Challenge:

for i in [0...3]
	console.log "Day {i+1}\n"
	for habit in myHabits
		console.log "[ ] {habit}\n"