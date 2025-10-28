global css body c:warm2 bg:warm8 ff:Arial inset:0 d:vcc

tag app
	count = 0
	<self>
		<%counter @click=count++>
			css e:250ms us:none py:3 px:5 rd:4 bg:gray9 d:hcc g:1
				bd:1px solid transparent @hover:indigo5
			<img[s:20px] src="https://imba.io/logo.svg">
			"count is {count}"

imba.mount <app>

const name = "Hugo"
let habitComplete? = no
console.log if habitComplete? then "Hello {name}!" else "Bye!"

# let myHabits = 
# 	[ 'exercise'
# 	, 'study'
# 	, 'clean up'
# 	]
let myHabits = [ 
	'exercise'
	'study'
	'clean up'
	'yay'
]
console.log myHabits

let habitDetails = 
	name: "exercise"
	done: false
	completions: 12

console.log habitDetails

console.log habitDetails.name.toUpperCase!
