export const toMs = 
	seconds: do(seconds) 1000 * seconds
	minutes: do(minutes) 1000 * 60 * minutes
	hours: do(hours) 1000 * 60 * 60 * hours
	days: do(days) 1000 * 60 * 60 * 24 * days


export const fromMs = 
	seconds: do(ms) ms / 1000
	minutes: do(ms) ms / 1000 / 60
	hours: do(ms) ms / 1000 / 60 / 60
	days: do(ms) ms / 1000 / 60 / 60 / 24