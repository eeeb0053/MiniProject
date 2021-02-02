'use strict'
var res = res || {}
res = (() => {
	const init = ctx => {
		localStorage.setItem('ctx', ctx)
	}
	return {init}
})()