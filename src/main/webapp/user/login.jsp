<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<%
        // 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
%>
<title>Hi-E Login</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">
<script>
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.empno.value)
            {
                alert("사번을 입력하세요");    
                inputForm.empno.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.password.focus();
                return false;
            }
        }
    </script>
</head>
<body class="bg-gradient-primary">
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<!-- Nested Row within Card Body -->
					<div class="">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Hi - E 로그인</h1>
							</div>
							<form class="user" name="loginInfo" action="login_proc.jsp" method="post" onsubmit="return checkValue()">
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										name="empno" placeholder="Empno">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										name="password" placeholder="Password">
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox small">
										<input type="checkbox" class="custom-control-input"
											id="customCheck" name="remember"> <label
											class="custom-control-label" for="customCheck">비밀번호
											기억하기</label>
									</div>
								</div>
								<button type="submit" class="btn btn-primary btn-user btn-block">
									로그인</button>
								<hr>
								<a href="" class="btn btn-google btn-user btn-block">
									<i class="fab fa-google fa-fw"></i> 구글 로그인
								</a> 
								<a href=""
									class="btn btn-facebook btn-user btn-block"> <i
									class="fab fa-facebook-f fa-fw"></i> 페이스북 로그인
								</a>
							</form>
							<%
							// 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
							// login_proc.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
							String msg = request.getParameter("msg");

							if (msg != null && msg.equals("0")) {
							%>
							<script>alert("비밀번호가 다릅니다")</script>
							<%
							} else if (msg != null && msg.equals("-1")) {
							%>
							<script>alert("아이디가 다릅니다")</script>
							<%
							}
							%>
							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.jsp">비밀번호 찾기</a>
							</div>
							<div class="text-center">
								<a class="small" href="service-agree.html">계정 생성하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
</body>
</html>