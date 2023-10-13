<%@ page contentType="text/html; charset=UTF-8"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800">설문조사</h1>

	<div class="row">


		<div class="col-lg-8">

			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">설문조사 타이틀</h6>
				</div>
				<div class="card-body">
					<p>설문조사 설명</p>
					<hr class="sidebar-divider my-0"><br>
					
					<div class="mb-1 small">설문 진행률</div>
							<div class="progress mb-4">
								<div class="progress-bar" role="progressbar" style="width: 75%"
									aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
							</div>


					<div>설문조사 내용들어갈 자리</div>
					<br>
					<br>
					<hr class="sidebar-divider my-0">
					<br>

					<div class="my-2"></div>
					<div class="my-2"></div>
					<div class="my-2"></div>

					<a href="index.jsp?inc=/view/surveytable.jsp"
						class="btn btn-danger btn-icon-split"> <span
						class="icon text-white-50"> <i class="fas fa-trash"></i>
					</span> <span class="text">작성 취소</span>
					</a> <a href="#" class="btn btn-success btn-icon-split"> <span
						class="icon text-white-50"> <i class="fas fa-check"></i>
					</span> <span class="text">설문지 제출</span>
					</a>

					<div class="my-2"></div>
					<div class="my-2"></div>

				</div>
			</div>

		</div>

	</div>

</div>
<!-- /.container-fluid -->