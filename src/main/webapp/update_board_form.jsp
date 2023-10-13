<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updateBoard.board" method="post">
<input type="hidden" name="boardNum" value="${board.boardNum }">
<table>
    <tr>
        <td>제목</td>
        <td><input type="text" name="title" value="${board.title }"></td>
    </tr>
    <tr>
        <td>작성자</td>
        <td><input type="text" name="writer" value="${board.writer }"></td>
    </tr>
    <tr>
        <td>작성일</td>
        <!-- read온리는 수정은 안되지만, 데이터가 넘어간다. -->
        <td><input type="text" name="createDate" value="${board.createDate }" readonly></td>
    </tr>
    <tr>
        <td>내용</td> <!--textarea는 value가 없다. 여는태그, 닫는태그 사이에 넣어준다.  -->
        <td><textarea rows="5" cols="50">${board.content }</textarea></td>
    </tr>
</table>
<input type="submit" value="글수정">
</form>
</body>
</html>