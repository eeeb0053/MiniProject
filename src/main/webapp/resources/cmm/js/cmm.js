'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
        $('#user-page').click(e => {location.href=`${x}/move/uss/index`})
        $('#booking-page').click(e => {location.href=`${x}/move/bkg/index`})

	}
	const goHome = x => {location.href = `${x}/`}
	return { init, goHome }
})()
