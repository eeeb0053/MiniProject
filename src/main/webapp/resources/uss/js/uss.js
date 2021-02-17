'use strict'
var uss = uss || {}
uss = (() => {
	const init = x => {
		$('#user-register').click(e => {location.href=`${x}/move/uss/register`})
        $('#user-login').click(e => {location.href=`${x}/move/uss/login`})
	}
	const goHome = x => {location.href = `${x}/`}
	const register = x => {
		$.ajax({
	          url: `${x}/users`,
	          type: 'POST',
	          data: JSON.stringify({
	              email: $('#userid').val(),
	              password: $('#password').val()
	          }),
	          dataType: 'json',
	          contentType: 'application/json',
	          success: d => {
				alert(``)
	             location.href = `${x}/move/uss/login`
	          },
	          error: e => {
	              console.log(`유저등록 실패: ${e.responseText}`)
	          }
	      })
	}
	
	const login = x => {
		alert(`로그인 진입`)
		$.ajax({
			url: `${x}/users/login`,
			type: `post`,
			data: JSON.stringify({email: $(`#uid`).val(), password:$(`#pwd`).val()}),
			dataType: 'json',
			contentType: 'application/json',
			success: d => {
				location.href = `${x}/move/uss/detail`
			},
			error: e => {
				alert(`Fail`)
			}
		})
	}
	return {init, goHome, login, register}
})()
