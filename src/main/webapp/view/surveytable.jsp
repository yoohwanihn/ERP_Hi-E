<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page import="model.*" %>
<%@ page import="java.util.*" %> <!-- Vector import -->

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">설문조사</h1>
	
	<br>
	<br>
	<p class="mb-4">
		현재 진행중인 설문조사 목록입니다.
		설문조사 기간이 종료된 이후에는 참여가 불가합니다. 제출한 설문조사는 수정이 불가합니다.
	</p>
	<hr>
	<br>

	<br> <br>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">현재 진행중인 설문조사</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>NO</th>
							<th>설문지 타이틀</th>
							<th>참여기간</th>
							<th>참여대상</th>
							<th>참여여부</th>
							<th>신청</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>NO</th>
							<th>설문지 타이틀</th>
							<th>참여기간</th>
							<th>참여대상</th>
							<th>참여여부</th>
							<th>신청</th>
						</tr>
					</tfoot>
					<tbody>
					
					<%
					SurveyDao surveydao = new SurveyDao();
					Vector vec = (Vector)surveydao.getSurveyList();

					for(int i=0; i<vec.size(); i++){
						
					SurveyDto surveydto = (SurveyDto)vec.get(i);	
					
					%>
						<tr>
							<td><%=surveydto.getSur_num() %></td>
							<td><%=surveydto.getSur_title() %></td>
							<td><%=surveydto.getSur_startdate() %> ~ <%=surveydto.getSur_finishdate() %></td>
							<td><%=surveydto.getSur_group() %></td>
							<td><%=surveydto.getSur_position() %></td>
							<td><a href="index.jsp?inc=/view/survey.jsp">참여하기</a></td>
						</tr>				
					<%	
					}				
					%>				
						
					</tbody>
				</table>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->