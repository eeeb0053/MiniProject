'use strict'
var cmm = cmm || {}
cmm = (() => {
<<<<<<< HEAD
	const init = x => { // add 페이지로 이동하는 거
        $('#add').click(e => {location.href=`${x}/move/shw/add`})
        $('#list').click(e => {location.href=`${x}/move/shw/list`})
		$('#detail').click(e => {location.href=`${x}/move/shw/detail`})
=======
	const init = x => {
        $('#list').click(e => {location.href=`${x}/move/bkg/list`})
        $('#booking').click(e => {location.href=`${x}/move/bkg/booking`})
		$('#insert-many-bkg').click(e => {
			e.preventDefault()
			$.getJSON(`${x}/bookings/insert-many/${$('#bkg-count').val()}`, d => {
				alert(`${$('#bkg-count').val()}건 더미데이터 생성`)
				location.reload()
			})
		})
>>>>>>> refs/heads/develop-keb
	}
	const goHome = x => {location.href = `${x}/`}
	return { init, goHome }
})()
