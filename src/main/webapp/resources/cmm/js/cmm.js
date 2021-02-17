'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
<<<<<<< HEAD
        $('#user-page').click(e => {location.href=`${x}/move/uss/index`})
        $('#booking-page').click(e => {location.href=`${x}/move/bkg/index`})

=======
		$('#write').click(e => {location.href=`${x}/move/brd/write`})
		$('#list').click(e => {location.href=`${x}/move/brd/list`})
		$('#detail').click(e => {location.href=`${x}/move/brd/detail`})
>>>>>>> refs/heads/develop-pwy
	}
	const goHome = x => {location.href = `${x}/`}
	return {init, goHome}
})()