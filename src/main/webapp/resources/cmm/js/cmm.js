'use strict'
var cmm = cmm || {}
cmm = (() => {

	const init = x => {
        $('#add').click(e => {location.href=`${x}/move/shw/add`})
        $('#list').click(e => {location.href=`${x}/move/shw/list`})
		$('#write').click(e => {location.href=`${x}/move/brd/write`})
		$('#list').click(e => {location.href=`${x}/move/brd/list`})
		$('#detail').click(e => {location.href=`${x}/move/brd/detail`})
        $('#user-page').click(e => {location.href=`${x}/move/uss/index`})
        $('#booking-page').click(e => {location.href=`${x}/move/bkg/index`})

	}
	const goHome = x => {location.href = `${x}/`}
	return { init, goHome }
})()
