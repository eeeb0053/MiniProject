<%@ page language="java" pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>전자정부 프레임워크 프로젝트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="container">
  <button type="button" class="goHome-btn" id="goHome" onclick="location.href='${ctx}/'"><i class="fa fa-home"></i></button>
  <form>
  
    <div class="row">
      <div class="col-25">
        <label for="title">제목</label>
      </div>
      <div class="col-75">
        <input type="text" id="title" placeholder="게시글 제목" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="content">내용</label>
      </div>
      <div class="col-75">
      	<textarea type="text" name="content" id="content" cols="60" rows="5" placeholder="300자 이내로 작성해주세요."></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="date">날짜</label>
      </div>
      <div class="col-75">
        <input type="text" id="date" placeholder="2021.02.13" required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="id">작성자</label>
      </div>
      <div class="col-75">
        <input type="text" id="id" placeholder="아이디를 입력하세요" required>
      </div>
    </div>
    <br />
    <div id="btn-group" class="clearfix" style="text-align: right">
      <button type="submit" id="write-btn" class="write-btn">등록</button>
      <button type="button" id="cancel-btn" class="cancel-btn">취소</button>
    </div>
  </form>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${brd}/js/brd.js"></script>
<script>
$('#write-btn').click(function() {brd.write(`${ctx}`)})
</script> 
 
</body>
</html>