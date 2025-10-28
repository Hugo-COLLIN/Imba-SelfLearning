let num = 4
let done = 3
let msg = ""

console.log "Are we done yet?"

# if/else
# if num === done
# 	msg = "yes"
# elif done > 0
# 	msg = "almost"
# else
# 	msg = "no"

# trailing conditionals
# msg = "yes" if done === num
# msg = "no" unless done === num

# unless
# unless done === num
# 	msg = "no"

# and / or
# msg = "not yes" unless (done === num) or (done === 0)
# msg = "not yes" if (done !== num) and (done !== 0)

# one line conditional
# msg = if done === num then "yes" else "no"



# alert msg


# -------------------------------------
# Challenge:

let isWeekend? = no

if isWeekend? 
then alert "take the day off" unless done > 0
else alert
	if done >= num
		"you did it"
	elif done > 0
		"keep going"
	else
		"keep it up"
