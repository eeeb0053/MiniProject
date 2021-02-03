'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
        $('#list').click(e => {location.href=`${x}/move/bkg/list`})
        $('#booking').click(e => {location.href=`${x}/move/bkg/booking`})
	}
	return {init}
})()
