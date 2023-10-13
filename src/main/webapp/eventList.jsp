<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link href="path_to_bootstrap_css/bootstrap.min.css" rel="stylesheet">

<!-- Optional: Bootstrap JS, jQuery, and Popper.js for some of Bootstrap's components -->
<script src="path_to_jquery/jquery.min.js"></script>
<script src="path_to_popper/popper.min.js"></script>
<script src="path_to_bootstrap_js/bootstrap.min.js"></script>
<style type="text/css">
table{
   border: 1px solid black;
   border-collapse: collapse;
   text-align: center;
   width: 600px;
}
tr, td{
   border: 1px solid black;
}
</style>
</head>
<body>
<table>
   <colgroup>
      <col width="15%">
      <col width="*">
      <col width="10%">
      <col width="15%">
      <col width="20%">
   </colgroup>
   <tr>
    <td>제 목</td>
    <td>내용</td>
    <td>작성자</td>
    <td>행사날짜</td>  
    <td>주소</td>
   </tr>
   
   <!-- a태그에서 데이터를 넘길때에는 ? 를 쓴다. 
       boardNum이라는 글번호를 가지고 가겠다. -->
      <!-- 게시글 개수만큼 만들어줘야한다.taglib만들어주고. -->
     <c:forEach items="${list}" var="board">
    <tr>
        <td><a href="eventDetail.do?boardNum=${board.boardNum}">${board.title}</a></td>
        <td>${board.content}</td>
        <td>${board.writer}</td>
        <td>${board.createDate}</td>  
        <td>${board.address}</td>   <!-- 주소 출력 -->
    </tr>
</c:forEach>
         
   
</table>
<input type="button" value="글쓰기" onclick="location.href='regEventForm.do';">
<a href="/ERP_Hi-E/index.jsp"><input type="button" value="돌아가기"/></a>
</body>
</html>