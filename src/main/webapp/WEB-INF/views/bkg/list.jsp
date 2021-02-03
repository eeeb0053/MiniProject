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
        table {border: 1px solid black}
        table tr{border: 1px solid black}
        table tr td{border: 1px solid black}
        table tr th{border: 1px solid black}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <a href="#" id="home">홈으로</a>
        <table class="my-tab" id="bkg-tab">
    	<tr>
    		<th style="width: 30%">전체 예약 목록</th>
    	</tr>
    	<tr>
    		<td>
    			<div id="bkg-data"></div>
    		</td>
    	</tr>
    </table>
    <script src="${bkg}/js/bkg.js"></script>
    <script>
        bkg.list({ctx: `${ctx}`, pageSize: `10`, pageNum: `1`})
    </script>
</body>
</html>