import {nanoid} from "nanoid"
import {Howl} from "howler"
import {persistData, loadData, clearData} from './persist'
import "./habit-group"
import "./habit-item"
import "./habit-adder"
import soundFile from "./magic-03.mp3"

global css
	@root
		$panel-space:30px @lt-sm:15px
		$icon-radius:15px @lt-sm:8px
		$icon-space:10px @lt-sm:5px
		$icon-size:70px @lt-sm:44px
		$default-speed:350ms
		$default-ease:ease
		$default-tween:all $default-speed $default-ease
	body bgc:#F9FAFC

		
tag dopamine-box-40
	prop showAdder = yes
	prop habits = loadData!
	prop celebrateSound = null
	
	def persist
		persistData(habits)
		
	def toggleAdder
		showAdder = !showAdder
		
	def resetAll
		for habit in habits
			habit.done = no
		persist!
		
	def handleHabitAdded e
		const newHabit = {name:e.detail, done: false, id: nanoid!}
		habits.push newHabit
		persist!
		
	def deleteItem e
		const idToDelete = e.detail
		habits = habits.filter do(h) h.id !== idToDelete
		persist!
		
	def toggleItem e
		# Initialiser l'audio au premier clic si nécessaire
		if !celebrateSound
			celebrateSound = new Howl {src: soundFile}
		
		const idToToggle = e.detail
		let remaining = 0
		for habit in habits
			if habit.id === idToToggle
				habit.done = !habit.done
			remaining++ unless habit.done

		if remaining === 0
			celebrateSound.play!

			# Imba refreshes only when an event is thrown (here toggleItem)
			# setTimeout executes and change data x seconds after but the view is not updated
			# so we manually tell imba to refresh it with imba.commit!
			setTimeout(&, 2000) do
				resetAll!
				imba.commit!

		persist!
		
	def handleClearData
		clearData!
		habits = []
		
	css .container inset:0px d:vflex jc:center ai:stretch
		.panel-area d:vflex ja:center flg:1 mt:0 mb:$panel-space pt:$panel-space
			.controls mt:20px d:flex  g:10px
				button px:5px rd:sm bgc:trasparent td@hover:underline fs:xs color:cooler5
		.chooser-area tween:$default-tween h:0 pos:relative of:hidden
			&.on h:100%
			.chooser inset:0 mx:$panel-space ofy:scroll bgc:cooler2 rdt:10px
			
	# -- Lifecycle methods : --
	def setup
		console.log "setup"
		showAdder = habits.length === 0 # if showAdder
		
	def mount
		console.log "mount"
		
	def rendered
		console.log "rendered"
		
	def render
		console.log "render"
		<self>
			<div.container>
				<div.panel-area>
					<habit-group 
						habits=habits 
						@deleteItem=deleteItem
						@toggleItem=toggleItem
					>
					<div.controls>
						<button @click=toggleAdder> "Toggle"
						<button @click=resetAll> "Reset all"
						<button @click=handleClearData> "Clear data"

				<div.chooser-area .on=showAdder>
					<div.chooser>
						<habit-adder @habitAdded=handleHabitAdded>

imba.mount <dopamine-box-40>