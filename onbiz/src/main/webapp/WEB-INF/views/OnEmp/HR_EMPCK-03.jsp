<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>OnBiz</title>
<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<script src="${path}/settings/bootstrap.min3.js"></script>
<script src="${path}/settings/popper.min.js"></script>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<!-- CSS 템플릿 추가 (10.04) -->
<link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
<!-- CSS 템플릿 -->
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<script type="text/javascript">
	$(document).ready(function() {
		var userSession = "${login}";
		var name = "${login.emp_korname}";
		console.log(" 유저세션 확인: " + userSession);
		console.log("이름 확인 : " + name);
	});
</script>
<title>사원정보수정</title>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<jsp:include page="/common/sidebar.jsp" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
				<jsp:include page="/common/header.jsp" />

				<!-- Section : 구현 내용 -->
				<div class="container-fluid">
					<div class="container">
						<h2 align='center'>사원정보수정</h2>
						<table class="table table-hover table-striped">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<thead>
								<tr class="table-success text-center">
							
									<th>직급번호</th>
									<th>부서번호</th>
									<th>권한번호</th>
									<th>비밀번호</th>
									<th>한글이름</th>
									<th>영어이름</th>
									<th>이메일</th>
		
									<th>생년월일</th>
									<th>소개</th>
									<th>증명사진</th>
									<th>전화번호</th>
									<th>주소</th>
									<th>재직상태</th>
									<th>재직상태변경일</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>

					</div>
					<div class="modal fade" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">회원등록</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form id="frm02" class="form" method="post">
										<div class="row">

											<div class="col">
												<input type="text" class="form-control" placeholder="직급 입력"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="부서번호"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control" placeholder="권한번호"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="비밀번호"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control" placeholder="한글이름"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="영어이름"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control" placeholder="이메일"
													name="">
											</div>
										</div>
										<div class="row">
							
											<div class="col">
												<input type="text" class="form-control" placeholder="생년월일"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="소개"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control" placeholder="증명사진"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="전화번호"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control" placeholder="주소"
													name="">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="재직상태"
													name="">
											</div>
											<div class="col">
												<input type="text" class="form-control"
													placeholder="재직상태변경일" name="">
											</div>
										</div>
									</form>
									<br>
									<!--  섹션 끝  -->
								</div>
								<!-- Section end -->
							</div>
							<!-- End of Main Content -->
							<jsp:include page="/common/footer.jsp" />

						</div>
						<!-- End of Content Wrapper -->

					</div>
					</div>
					</div>
					</div>
					</div>
					<!-- End of Page Wrapper -->



					<!-- Scroll to Top Button-->
					<a class="scroll-to-top rounded" href="#page-top"> <i
						class="fas fa-angle-up"></i>
					</a>

					<!-- Custom scripts for all pages-->
					<script src="${path}/resources/js/sb-admin-2.min.js"></script>

					<!-- Core plugin JavaScript-->
					<script
						src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>