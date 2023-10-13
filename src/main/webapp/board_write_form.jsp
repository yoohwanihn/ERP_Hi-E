<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<form action="regBoard.board" method="post">
   <table>
      <tr>
         <td>제목</td>
         <td><input type="text" name="title"></td>
      </tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>파일 첨부</td>
				<td><input type="file" name="attachedFile"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="30" cols="60" name="content"></textarea></td>
			</tr>
		</table>
   <input type="submit" value="글등록">
</form>
</body>
</html>