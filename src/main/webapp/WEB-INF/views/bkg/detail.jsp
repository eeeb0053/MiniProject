<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h2>예약하기</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form>
      <div class="col-50">
            <h3>예약상품 정보</h3>
            <label for="stitle">예약번호</label>
            <span id="bNum"></span>
            <label for="stitle">전시명</label>
            <span id="sTitle"></span>
            <label for="sdate">일시</label>
            <span id="sDate"></span>
            <label for="slocation">장소</label>
            <span id="sLocation"></span>
            <label for="sprice">가격</label>
            <span id="sPrice"></span>
          </div>      	
          <div class="col-50">
            <h3>예약자 정보</h3>
            <label for="fname"><i class="fa fa-user"></i> 예약자ID </label>
            <span id="bId"></span>
            <label for="fname"><i class="fa fa-user"></i> 예약자명 </label>
            <span id="bName"></span>
            <label for="email"><i class="fa fa-envelope"></i> 이메일 </label>
            <span id="bEmail"></span>
            <label for="adr"><i class="fa fa-address-card-o"></i> 전화번호 </label>
            <span id="bPnumber"></span>         
        </div>
        <table><tbody><tr>
		<td><button id="booking-update-btn" class="btn">수정</button></td>
		<td><button id="booking-delete-btn" class="btn">삭제</button></td>
		</tr></tbody></table>

      </form>
    </div>
  </div>
</div>
    <script src="${bkg}/js/bkg.js"></script>
	<script>
    	bkg.detail(`${ctx}`)
    </script>
</body>
</html>