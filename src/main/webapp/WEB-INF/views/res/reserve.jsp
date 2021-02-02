<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</head>
<body>

<h2>예약하기</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      <div class="col-50">
            <h3>예약상품 정보</h3>
            <label for="cname">상품명</label>
            <i> OOO 전시 </i>
            <label for="ccnum">일시</label>
            <i> 2021-02-10 <br/></i>
            <label for="ccnum">장소</label>
            <i> 예술의 전당 </i><br/>
          </div>
        <div class="row">
        	
          <div class="col-50">
            <h3>예약자 정보</h3>
            <label for="fname"><i class="fa fa-user"></i> 예약자명 </label>
            <input type="text" id="fname" name="firstname" placeholder="예약자명 입력">
            <label for="email"><i class="fa fa-envelope"></i> 이메일 </label>
            <input type="text" id="email" name="email" placeholder="abc@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> 전화번호 </label>
            <input type="text" id="email" name="email" placeholder="010-1234-5678">
          </div>
          <div class="col-50">
            <h3>결제</h3>
            <label for="fname">승인 가능 카드</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">카드명</label>
            <input type="text" id="cname" name="cardname" placeholder="우리카드">
            <label for="ccnum">카드번호</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            
            <div class="row">
            	<div class="col-50">
                <label for="expmonth">유효 월</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
              </div>
              <div class="col-50">
                <label for="expyear">유효 년도</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
              <div class="col-50">
                <label for="cvv">비밀번호</label>
                <input type="text" id="cvv" name="cvv" placeholder="앞 두자리">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> 개인정보 이용에 동의합니다.
        </label>
        <input type="submit" value="결제하기" class="btn">
      </form>
    </div>
  </div>
  
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>2</b></span></h4>
      <p><a href="#">상품 1</a> <span class="price">8,000원</span></p>
      <p><a href="#">상품 2</a> <span class="price">5,000원</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>13,000원</b></span></p>
    </div>
  </div>
</div>

</body>
</html>
