<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

	<title>HI-E</title>

	<!-- 기본으로 사용될 css  -->
	
	<!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Custom styles for data table -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <!-- Eunha Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  
</head>

<body id="page-top">
<%
request.setCharacterEncoding("utf-8");
String inc = "view/main.jsp";
if(request.getParameter("inc") != null){
	inc = request.getParameter("inc");
}
%>


	<div id='index'>
		<!-- 로그인, 로그아웃 상태 -->
		
		
<!-- ---------------------------------------------------------------- -->		
		<!-- Page Wrapper -->
    	<div id="wrapper">
		
		
			<!-- 사이드 메뉴 -->
			<%@include file="sidebar.jsp" %>
			<!-- Divider -->
            <hr class="sidebar-divider">
            
            
            
<!-- ------------------------콘텐트---------------------------------------- -->            
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
            	
            	<!-- Topbar -->
            		<%@include file="topbar.jsp" %>
            	
            	<!-- Main Content -->
            	<div id="content">
                      		
            		<!-- Begin Page Content -->
            		<div>
            		<jsp:include page="<%=inc%>"></jsp:include>
            		</div>
            	
            	</div>                 
            
            
            </div>
			

		
		
<!-- -----------------------콘텐트----------------------------------------- -->	
		
		</div>
<!-- ---------------------------------------------------------------- -->		
			
		
		
		<!-- 푸터 -->
		<%@include file="footer.jsp" %>
	
	</div>





	<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>
    
    
    <!-- Page data table level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
    
    <!-- Page data table level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>    

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    
    
    <!-- Eunha Bootstrap JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

</body>

</html>