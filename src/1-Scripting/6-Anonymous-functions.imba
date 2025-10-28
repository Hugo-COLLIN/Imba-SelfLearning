const greeting = do(name) "Hello {name}"


const names = [
	"Mattias"
	"Lila"
]

console.log names.map greeting
console.log names.map do(name) "Hello {name}"
console.log names.map(do(name) "Hello {name}")
console.log names.map() do(name) "Hello {name}" # trailing callback



setTimeout((do console.log "Hello!"), 1000)

setTimeout((do 
	console.log "Hello!"
), 1000)

# Linting error but it works:
# setTimeout
# 	console.log "Hello!"
# 	1000

setTimeout(&, 1000) do 
	console.log "Hello!"
# & is a placeholder for placing the trailing callback