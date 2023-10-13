<%@ page contentType="text/html; charset=UTF-8"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-1 text-gray-800">새 설문 만들기</h1>
	<br> <br>

	<!-- Content Row -->
	<div class="row">

		<div class="col-lg-8">
			<!-- 설문조사 폼 -->
			<form>


				<div class="card mb-4">
					<div class="card-header py-3">
						<input class="form-control form-control-lg" type="text"
							placeholder="설문제목" aria-label=".form-control-lg example">
					</div>
					<div class="card-body">

						<!-- 참여 대상 선택 -->
						<div class="dropdown no-arrow mb-6">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">참여대상</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item active" href="#">전체</a> <a
									class="dropdown-item" href="#">DB로 연동해서</a> <a
									class="dropdown-item" href="#">그룹 넣어줌</a>
							</div>
						</div>
						<br>

						<!-- 설문내용 추가 -->
						<div class="card shadow mb-4">
							<div class="card-body">
								<div class="d-grid gap-2">
									<button type="button" class="btn btn-outline-primary"
									data-bs-container="body" data-bs-toggle="popover"
									data-bs-placement="bottom" data-bs-content="Bottom popover">
										이곳을 클릭해 항목을 만드세요</button>
								</div>
							</div>
						</div>

						<button type="button" class="btn btn-secondary"
							data-bs-container="body" data-bs-toggle="popover"
							data-bs-placement="bottom" data-bs-content="Bottom popover">
							Popover on bottom</button>




						<div class="my-2"></div>
						<div class="my-2"></div>
						<div class="my-2"></div>

						<a href="#" class="btn btn-success btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text">설문 생성</span>
						</a>

						<div class="my-2"></div>
						<div class="my-2"></div>
					</div>
				</div>


			</form>
		</div>

	</div>

</div>
<!-- /.container-fluid -->