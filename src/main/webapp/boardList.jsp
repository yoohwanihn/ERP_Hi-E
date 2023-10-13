<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
   border: 1px solid black;
   border-collapse: collapse;
   text-align: center;
   width: 100%;
}
tr, td{
   border: 1px solid black;
}
</style>
</head>
<body>
<form action="regBoardForm.board" method="post">
<table>
   <colgroup>
      <col width="10%">
      <col width="*">
      <col width="15%">
      <col width="15%">
   </colgroup>
   <tr>
      <td>글번호</td>
      <td>제 목</td>
      <td>작성자</td>
      <td>날짜</td>
      <td>조회수</td>
   </tr>
   
  <c:forEach items="${list }" var="board">
    <tr>
        <td>${board.boardNum }</td>
        <td><a href="boardDetail.board?boardNum=${board.boardNum }">${board.title }</a></td>
        <td>${board.writer }</td>
        <td>${board.createDate }</td>
        <td>${board.views }</td>  <!-- 이 부분을 수정하여 조회수를 출력 -->
    </tr>
</c:forEach>
   
</table>
<input type="submit" value="글쓰기">
<a href="/ERP_Hi-E/index.jsp"><input type="button" value="돌아가기"/></a>
</form>
 
 
</body>
</html>