<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="kor">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hi-E 회원가입</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    
    <script>
	    function checkValue(){
	        if(!document.userInfo.empno.value){
	            alert("사번을 입력하세요.");
	            return false;
	        }
	        
	        if(!document.userInfo.password.value){
	            alert("비밀번호를 입력하세요.");
	            return false;
	        }
	        
	        if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
	            alert("비밀번호를 동일하게 입력하세요.");
	            return false;
	        }
	    }
    </script>

</head>

<body class="bg-gradient-primary">
    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원 가입하기</h1>
                            </div>
                            <form class="user" method="post" action="register_proc.jsp" name="userInfo" onsubmit="return checkValue()">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="empno"
                                            placeholder="사번" maxlength="10">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="name"
                                            placeholder="이름" maxlength="15">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            name="password" placeholder="비밀번호" maxlength="16">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            name="passwordcheck" placeholder="비밀번호 확인" maxlength="16">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="birthday"
                                            placeholder="생년월일(8자리)">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" name="phonenumber"
                                            placeholder="전화번호(-없이 입력)">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" name="email"
                                            placeholder="이메일 주소">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="address"
                                        placeholder="주소">
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                	회원 가입하기
                                </button>
                                <hr>
                                <a href="" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> 구글로 가입하기
                                </a>
                                <a href="" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> 페이스북으로 가입하기
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="login.jsp">로그인하기</a>
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