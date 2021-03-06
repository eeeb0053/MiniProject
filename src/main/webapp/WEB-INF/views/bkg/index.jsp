<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>
body {
  font-family: Roboto, Arial, sans-serif;
  ont-size: 15px;
  color: #525252;
  padding: 8px;
  line-height: 160%;
}
a {
  color: #598585;
}

a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
  color: #2f4f4f;
}

a:active {
  text-decoration: underline;
}
button {
    width:50px;
    background-color: #467575;
    border: none;
    color:#fff;
    padding: 2px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
}
button:hover {
  background-color: #2b4d4d;
}
input[type=text] {
  width: 13%;
  margin-bottom: 20px;
  padding: 7px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
</style>
    <h2>예약 페이지</h2>
    <a href="#" id="booking">예약하기</a><br>
    <a href="#" id="bkg-list">예약목록</a><br>
    <input type="text" id="bkg-count" placeholder="더미데이터 생성 건수"/><button id="insert-many-bkg">생성</button><br/><br/>
<script src="${bkg}/js/bkg.js"></script>
<script>
	bkg.init(`${ctx}`)
</script>