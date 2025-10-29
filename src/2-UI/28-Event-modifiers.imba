tag habit-adder
	prop name = "Untitled"

	css bgc:cool2 p:10px rd:lg
		header fw:500 fs:xs mb:5px mt:-5px c:cool5
		section d:flex g:5px
		button bgc:indigo5 @hover:indigo6 c:white rd:sm px:5px
		div flex:1
			input w:100% px:5px rd:sm

	def handleSubmit e
		# e.preventDefault!
		console.log "Hi!"

	# @event.simpleModifier.paramModifier(params)
	# Modifiers:
	# - .throttle : delay before the event can be re-emitted
	# - .throttle(delay) : custom delay before event re-emitting
	# - .log("message")
	# - .prevent : prevent the form to be submitted (= e.preventDefault!)
	# - @click .alt, .shift, ... : corresponding key (alt, shift...) needs to be pressed to trigger the next modifier

	# <self @click.alt.shift.log("get clicked!")>
	# <self @click.log("get clicked!").alt.log("with alt!")> # not working with alt
	<self @mousemove.throttle.alt.log("move")>
		<header> "Add habit"
		<section>
		<form @submit.prevent.throttle(1000)=handleSubmit>
			<div>
				<input type="text" bind=name>
			<button> "Add"