<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kor">

<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	 // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	  //document.domain = "abc.go.kr";
	
	  function goPopup(){
	  	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	      var pop = window.open("./jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	      
	  	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	      //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	  }
	  /** API 서비스 제공항목 확대 (2017.02) **/
	  function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
	  						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	  	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	  	document.user.roadAddrPart1.value = roadAddrPart1;
	  	document.user.roadAddrPart2.value = roadAddrPart2;
	  	document.user.addrDetail.value = addrDetail;
	  	document.user.zipNo.value = zipNo;
	  }
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
                             
								<button type="submit"  value="주소검색" onclick="goPopup();" class="btn btn-primary btn-user btn-block">
										우편번호 찾기
								</button>
                                <button type="btn" class="btn btn-primary btn-user btn-block">
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