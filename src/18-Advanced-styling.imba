css section d:flex g:10px ja:center # inset:0

tag conditional-styles
	prop lightsOn = no
	css size:50px rd:full bgc:gray4
	<self [bgc:red4]=lightsOn [size:40px]=!lightsOn>

imba.mount <section>
	<conditional-styles lightsOn=false>
	<conditional-styles lightsOn=true>


# ----------------------------


# Idk not working:

tag conditional-classes
	prop lightsOn = false
	css size:50px rd:full bgc:gray4
	css .light bgc:green4 size:80px # not working
	<self .light=lightsOn>

imba.mount <section>
	<conditional-classes lightsOn=false>
	<conditional-classes lightsOn=true>


# ----------------------------

tag class-modifiers
	prop lightsOn = false
	css size:50px rd:full
		bgc:gray4 .light:amber5
	<self .light=lightsOn>

imba.mount <section>
	<class-modifiers lightsOn=false>
	<class-modifiers lightsOn=true>


# ----------------------------

tag interpolated-classes
	prop lightType = "stop"
	css size:50px rd:full bgc:gray2
		d:flex ja:center c:black/70 fs:sm
		&.off bgc:gray4
		&.stop bgc:red4
		&.slow bgc:amber4
		&.go bgc:green4
	<self .{lightType}> ".{lightType}"

imba.mount <section>
	<interpolated-classes lightType="off">
	<interpolated-classes lightType="go">
	<interpolated-classes lightType="slow">
	<interpolated-classes lightType="stop">


# ----------------------------

tag interpolated-styles
	prop hue = 0.2
	css size:20px rd:xs
	<self [bgc:hsl({hue}turn, 85%, 50%)]>

imba.mount <section>
	for num in [0...10]
		<interpolated-styles hue=(num * 0.1)>



# below not working, squares should be rotating by dragging them
tag interpolated-styles-2
	prop hue = 0.2
	prop val = 0
	css size:20px rd:xs tween:all 100ms ease pos:relative
	<self
		[scale:2 zi:10]=(val != 0)
		[rotate:{val}deg bgc:hsl({hue}turn, 85%, 50%)]
		@touch.sync(self, 'val') # Property '@sync' does not exist on type 'Event'.ts-plugin(2339)
	>

imba.mount <section>
	for num in [0...10]
		<interpolated-styles-2 hue=(num * 0.1)>


# ----------------------------

tag css-in-tags
	prop hue = 0.2
	<self>
		<div>
			css size:50px rd:xs bgc:hsl({hue}turn, 85%, 50%)

imba.mount <section>
	for num in [0...10]
		<css-in-tags hue=(num * 0.1)>


# ----------------------------

tag css-variables
	css $primary-color:rose7 # blue8 
		# --primary-color:rose7
		$secondary-color:orange2

	css a
		c:$primary-color
		text-decoration:underline
		text-decoration-color:$secondary-color
		text-decoration-thickness:3px

	css button bgc:$secondary-color c:$primary-color rd:md p:3px px:10px

	<self [d:vflex g:10px ja:center]>
		<button> "Button"
		<a href="#"> "Link"

imba.mount <section>
	<css-variables>