<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link href="path_to_bootstrap_css/bootstrap.min.css" rel="stylesheet">

<!-- Optional: Bootstrap JS, jQuery, and Popper.js for some of Bootstrap's components -->
<script src="path_to_jquery/jquery.min.js"></script>
<script src="path_to_popper/popper.min.js"></script>
<script src="path_to_bootstrap_js/bootstrap.min.js"></script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>Insert title here</title>
</head>
<body>
	<form action="regEvent.do" method="post">
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
				<td>행사날짜</td>
				<td><input type="date" name="createDate"></td>
				<!-- createDate를 eventDate로 변경 -->
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="5" cols="50" name="content"></textarea></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address" id="address">
					<button type="button" onclick="searchAddress()">주소검색</button></td>
			</tr>
		</table>
		<input type="submit" value="글등록">
		
		<script>
function searchAddress() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 검색된 주소 정보를 변수에 저장
            var fullAddr = data.address;
            // 검색된 주소를 해당 필드에 넣는다.
            document.getElementById('address').value = fullAddr;
        }
    }).open();
}
</script>
	</form>
</body>
</html>