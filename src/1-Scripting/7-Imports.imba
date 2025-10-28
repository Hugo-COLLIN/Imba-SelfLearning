import {nanoid} from "nanoid"

console.log nanoid!

# -----------

import {toMs, fromMs} from "./helpers.imba"
import {durationInMillisecondsAsWordHourAndMin as format} from "./format.js"

console.log toMs.seconds 2
console.log fromMs.seconds 3000

console.log format toMs.minutes 30




