<%@ page contentType="text/html; charset=UTF-8"%>
 
<html>
<head>
    <title>로그아웃 처리</title>
</head>
<body>
    <%
        session.invalidate(); // 모든세션정보 삭제
        response.sendRedirect("/login.jsp"); // 로그인 화면으로 다시 돌아간다.
    %>
</body>
</html>