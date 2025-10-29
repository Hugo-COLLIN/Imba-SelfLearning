import "./breakfast"
# lowercase, dash-composed tags are available everywhere once the file is imported 
# (in the importer file and every exported/imported file) (regsitered as WebComponent)

import {RiceBowl, TooManyTacos, BreakfastForDinner} from "./dinner"
# Capitalised glued needs to be exported in the definition file and imported in the usage file




imba.mount <div>
	<red-apple>
	<hot-bread>
	<fresh-egg>

	<RiceBowl>
	<TooManyTacos>
	<BreakfastForDinner>