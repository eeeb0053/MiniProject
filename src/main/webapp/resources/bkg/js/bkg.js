'use strict'
var bkg = bkg || {}
bkg = (() => {
	const booking = x => {
		alert(`예약 진입`)
		$.ajax({
			url: `${x}/bookings`,
			type: `POST`,
			data: JSON.stringify({
				bookNum: 0,
                showTitle: $('#showTitle').val(),
                showDate: $('#showDate').val(),
                showLocation: $('#showLocation').val(),
                showPrice: $('#showPrice').val(),
				bookId: `abc123`,
				bookName: $('#bookName').val(),
				bookEmail: $('#bookEmail').val(),
				bookPnumber: $('#bookPnumber').val()
			}),
			dataType: 'json',
            contentType: 'application/json',
            success: d => {
                if(d === 'SUCCESS'){
                    alert(`예약 완료`)
                    location.href=`${x}/move/bkg/list`
                }else{
                    alert(`추가 실패`)
                    location.reload()
                }
            },
            error: e => { alert(`추가 실패: ${e}`)}
		})
	}
	const list = x => {	
	$('#home').click(e => {location.href=`${x.ctx}/`})
	$.getJSON(`${x.ctx}/bookings/list/${x.pageSize}/${x.pageNum}`, d => { 
		$(`<h3/>`)
		.attr({id: `title`})
		.text(`예약목록`)
		.appendTo(`#bkg-data`)
		$(`<table/>`)
		.attr({id: `tab`})
		.css({width: `100%`})
		.appendTo(`#title`) 
		$(`<tr/>`).attr({id: `tr_1`}).appendTo(`#tab`)
		$.each([`예약번호`,`상품명`,`일시`,`장소`,`금액`, '예약자명'], 
		    (i, j) => {
			$(`<th>${j}</th>`).css({backgroundColor: `#bfb6b6`, fontSize: `Medium`})
			.appendTo(`#tr_1`)
		})
		$.each(d.list, 
			(i, j) => {
			$(`<tr><td><a class="bookNum" href="#" id="${j.bookNum}">${j.bookNum}</a></td>
		   	    		<td>${j.showTitle}</td>
		   	    		<td>${j.showDate}</td>
						<td>${j.showLocation}</td>
						<td>${j.showPrice}</td>
						<td>${j.bookName}</td></tr>`)
						.css({padding: `15px`, textAlign: `left`, fontSize: `small`})
						.appendTo(`#tab`)
		})
		$('.bookNum').each(function(){
                    $(this).click(e => {
                        e.preventDefault()
                        localStorage.setItem('bookNum', `${this.id}`)
                        location.href=`${x.ctx}/move/bkg/detail`
                    })
                })
		$(`<div/>`)
		.attr({id: `bkg_page`})
		.addClass(`pagination`)
		.appendTo(`#bkg-data`)
		const page = d.page
		function* range(start, end){
			yield start;
			if(start === end) return;
			yield* range(start + 1, end);
		}
		if(page.existPrev){
			$(`<a/>`)
			.attr({href: `#`})
			.text(`<<`)
			.appendTo(`#bkg_page`)
			.click(e=>{
				e.preventDefault()
				$(`#bkg-data`).empty()
				bkg.list({ctx: x.ctx, pageSize: `10`, pageNum: page.prevBlock})
			})
		}
		$.each([...range(page.startPage, page.endPage)],
			(i, j) => {
			$(`<a/>`)
			.attr({href: `#`})
			.css({backgroundColor: (j !== page.pageNum) ? `white` : `#F0B6B6`})
			.text(`${j}`)
			.appendTo(`#bkg_page`)
			.click(e=> {
				e.preventDefault()
				$(`#bkg-data`).empty()
				bkg.list({ctx: x.ctx, pageSize: `10`, pageNum: j})
				})
		})
		if(page.existNext){
			$(`<a/>`)
			.attr({href: `#`})
			.text(`>>`)
			.appendTo(`#bkg_page`)
			.click(e=>{
				e.preventDefault()
				$(`#bkg-data`).empty()
				bkg.list({ctx: x.ctx, pageSize: `10`, pageNum: page.nextBlock})
			})
		}
	})
}
	const detail = x => {
        $.getJSON(`${x}/bookings/${localStorage.getItem('bookNum')}`, d => {
            $('#bNum').text(d.bookNum)
            $('#sTitle').text(d.showTitle)
            $('#sDate').text(d.showDate)
            $('#sLocation').text(d.showLocation)
            $('#sPrice').text(d.showPrice)
			$('#bId').text(d.bookId)
			$('#bName').text(d.bookName)
			$('#bEmail').text(d.bookEmail)
			$('#bPnumber').text(d.bookPnumber)

            $('#update-btn').click(e => {
                $('#showTitle').html('<input id="update-title" type="text" value="'+d.showTitle+'"/>')
                $('#showLocation').html('<input id="update-location" type="text" value="'+d.showLocation+'"/>')
                $('#showDate').html('<input id="update-date" type="text" value="'+d.showDate+'"/>')
                $('#showPrice').html('<input id="update-price" type="text" value="'+d.showPrice+'"/>')
                $('#toggle').html('<button id="confirm">확인</button>')
                $('#confirm').click(e => {
                    e.preventDefault()
                    $.ajax({
                        url: '/bookings',
                        type: 'PUT',
                        data: JSON.stringify({
                            bookNum: d.bookNum,
                            showTitle: $('#update-title').val(),
                            showLocation: $('#update-location').val(),
                            showDate: $('#update-date').val(),
                            showPrice: $('#update-price').val()
                        }),
                        dataType: 'json',
                        contentType: 'application/json',
                        success: d => {
                            if(d.message === 'SUCCESS'){
                                location.href = '/move/bkg/detail'
                            }else{
                                alert(`수정 실패`)
                            }
                        },
                        error: e => {alert(`수정 실패: ${e}`)}
                    })
                })
            })
            $('#delete-btn').click(e => {
                e.preventDefault()
                $.ajax({
                    url: '/bookings',
                    type: 'DELETE',
                    data: JSON.stringify({
                        resNum: d.resNum
                    }),
                    dataType: 'json',
                    contentType: 'application/json',
                    success: d => {
                        if(d.message === 'SUCCESS'){
                            location.href='/move/bkg/list'
                        }else{
                            alert('삭제 실패')
                        }
                    },
                    error: e => { alert(`삭제 실패: ${e}`)}
                })
            })
        })
	}
	return {booking, list, detail}
})()