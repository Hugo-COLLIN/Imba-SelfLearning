const myDiv = <div> "Hello from Imba"

# imba.mount myDiv, document.body
# imba.mount myDiv

imba.mount <div>
	<h1 title="myTitle"> "Hello from Imba"
	<h2> 1 + 1
	<ul.my-list.foo .bar>
		<li> "One"
		<li> "Two"
		<li> "Three"


imba.mount <div>
		<details.imba-details>
			<summary> "Imba"
			<p> "A cool programming language"
			<a href="https://imba.io"> "Learn more"
