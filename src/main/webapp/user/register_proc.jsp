<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="model.UserBean" %>  
<%@ page import="model.UserDao" %> 
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <title>Hi-E 회원가입 처리</title>
</head>
<body>
    <!-- register.jsp에서 입력한 정보를 넘겨 받아 처리한다. -->
    <% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
    %>
    
    <jsp:useBean id="userBean" class="model.UserBean" />
    <jsp:setProperty property="*" name="userBean"/>
    
    <%
		UserDao dao = UserDao.getInstance();
	
		// 회원정보를 담고있는 userBean을 dao의 insertUser() 메서드로 넘긴다.
		// insertUser()는 회원 정보를 EMP_User 테이블에 저장한다.
		dao.insertUser(userBean);
	%>
	
	<br><br>
		<b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
		<br><br>
		<font color="blue"><%=userBean.getName() %></font>님 가입을 축하드립니다.
		<br><br>
		
		<%-- 자바빈에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td>사번</td>
				<td><%=userBean.getEmpno()%></td>
			</tr>		
			<tr>
				<td>비밀번호</td>
				<td><%=userBean.getPassword() %></td>
			</tr>	
			<tr>
				<td>이름</td>
				<td><%=userBean.getName() %></td>
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<%=userBean.getBirthday()%>
				</td>
			</tr>
					
			<tr>
				<td>이메일</td>
				<td>
					<%=userBean.getEmail()%>
				</td>
			</tr>	
			<tr>
				<td>휴대전화</td>
				<td><%=userBean.getPhonenumber() %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<%=userBean.getAddress()%>
				</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td>
					<div id="current_date">
					    <script>
					        date = new Date();
					        year = date.getFullYear();
					        month = date.getMonth() + 1;
					        day = date.getDate();
					        document.getElementById("current_date").innerHTML = year + "/" + month + "/" + day  ;
					    </script>
					</div>
				</td>
			</tr>
    <h1>회원 가입이 완료되었습니다!</h1>
    <a href="login.jsp">로그인 페이지로 이동</a>
</body>
</html>