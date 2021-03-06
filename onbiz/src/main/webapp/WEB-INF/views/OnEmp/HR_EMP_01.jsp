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

<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<!-- Custom styles for this template-->
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min.css">
<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<script src="${path}/settings/popper.min.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>
<style type="text/css">
body { font-family: 'Nanum Gothic', sans-serif; font-size: 14px;}
</style>
<script type="text/javascript">

var id = $("[name=emp_no]").val();
var ptn_no = ${"[name=ptn_no]"}.val();
var dept_no = ${"[name=dept_no]"}.val();
var auth_no = ${"[name=auth_no]"}.val();
var pass =$("[name=emp_pass]").val();
var emp_korname =$("[name=emp_korname]").val();
var emp_engname =$("[name=emp_engname]").val();
var emp_email =$("[name=emp_email]").val();
var emp_hiredte =$("[name=emp_hiredte]").val();
var emp_birth =$("[name=emp_birth]").val();
var emp_content =$("[name=emp_content]").val();
var emp_profile =$("[name=emp_profile]").val();
var emp_tel =$("[name=emp_tel]").val();
var emp_addr =$("[name=emp_addr]").val();
var emp_workst =$("[name=emp_workst]").val();
var emp_workdte =$("[name=emp_workdte]").val();
	$(document).ready(function() {	
		})	
		$("#goDash").click(function() {
			if(confirm("???????????? ?????????????????????????")) {
				$(location).attr("href","${path}/dash.do");	
			}
	});
		$("#submitUser").click(function() {
			if(confirm("??????????????????????????")) {
				$(location).attr("href","${path}/UserInsert.do");
				$("form").submit();
			}
	});

	};// document.ready end
</script>
</head>
<title>??????????????????</title>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/common/HR/sidebar2.jsp" />

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

		<!-- Main Content -->
		<div id="content">
			<jsp:include page="/common/header.jsp"/>
					
			<!-- Section : ?????? ?????? -->
	        <div class="container-fluid"><br>
				<div class="card border-primary mb-3" style="max-width: 60rem; margin:0 auto;">
  					<div class="card-header"><h3>???????????? ??????</h3></div>
					<div class="card-body">
						<div class="container">
						<!-- ???????????? -->
						<form name="frm01" id="frm01" method="post" action="${path}/UserInsert.do">
							<div class="form-group">
								<fieldset >
									<input class="form-control" id="emp_no" type="hidden" name="emp_no"
									 placeholder="emp_no_seqence.nextval, ?????? X, ?????? ????????????" disabled="disabled" />
									 <!-- disabled="disabled" -->
								</fieldset>
							</div>
<script type="text/javascript">
$(document).ready(function() {	
var inputValue = $("input[name='ptn_no']:ckecked").val();
var inputValue = $("input[name='dept_no']:ckecked").val();
var inputValue = $("input[name='auth_no']:ckecked").val();	
});
</script>							



							<!-- ???????????? - ?????????, ????????? ???????????? ????????? ??? ????????? ??? ????????? ??? ?????? -->
							<div class="form-group">
								<label class="form-label" for="ptn_no"></label>
								<fieldset class="form-group">
									<legend class="mt-4">??????</legend>
									<div class="form-check">
										<label class="form-check-label"> 
										<input type="radio" class="form-check-input" id="ptn_no" name="ptn_no" value="p01"> 
											??????
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="ptn_no" name="ptn_no" value="p02">
											??????
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="ptn_no" name="ptn_no" value="p03">
											??????
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="ptn_no" name="ptn_no" value="p04">
											??????
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> 
										<input type="radio"
											class="form-check-input" id="ptn_no" name="ptn_no" value="p05">
											??????
										</label>
									</div>
								</fieldset>
							</div>


							<!-- ???????????? - ?????????  -->

							<div class="form-group">
								<fieldset class="form-group">
								<legend class="mt-4">??????</legend>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="dept_no" name="dept_no" value="d01">
											??????????????????1
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="dept_no" name="dept_no" value="d02">
											??????????????????2
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="dept_no" name="dept_no" value="d03">
											UI?????????1
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="dept_no" name="dept_no" value="d04">
											UI?????????2
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="dept_no" name="dept_no" value="d05">
											???????????????
										</label>
									</div>
								</fieldset>
							</div>

							<!-- ????????????(pm/tm/hr), CEO??? ????????? ????????? ?????? ???????????? X  -->

							<div class="form-group">
								<fieldset class="form-group">
									<legend class="mt-4">??????</legend>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="auth_no" name="auth_no" value="a01"> TM
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="auth_no" name="auth_no" value="a02"> PM
										</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" id="auth_no" name="auth_no" value="a03"> HR
										</label>
									</div>
								</fieldset>
							</div>


							<!-- ???????????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">????????????</legend>
									<input
										class="form-control" id="emp_pass" name="emp_pass" type="text"
										placeholder="??????????????? ???????????????."/>
								</fieldset>
							</div>


							<!-- ???????????? -->


							<div class="form-group">
								<fieldset >
								<legend class="mt-4">??????</legend>
									<input
										class="form-control" id="emp_korname" name="emp_korname" type="text"
										placeholder="?????? ????????? ???????????????."/>
								</fieldset>
							</div>


							<!-- ???????????? -->

							<div class="form-group">
								<fieldset>
								<legend class="mt-4">?????? ??????</legend>
								 <input
										class="form-control" id="emp_engname" name= "emp_engname" type="text"
										placeholder="?????? ????????? ???????????????."/>
								</fieldset>
							</div>


							<!-- ????????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">?????????</legend>
									<input
										class="form-control" id="emp_email" name="emp_email" type="text"
										placeholder="oo@??????.com"/>
								</fieldset>

							</div>

							<!-- ?????????, ????????? ???????????? ??????-->

							<div class="form-group">
								<fieldset>
									<legend class="mt-4">?????????</legend> 
									<input
										class="form-control" id="emp_hiredte" name="emp_hiredte" type="text"
										placeholder="????????? : 2021/10/10"/>
								</fieldset>
							</div>

							<!-- ???????????? -->

							<div class="form-group">
								<fieldset>
									<legend class="mt-4">????????????</legend>
									 <input
										class="form-control" id="emp_birth" name="emp_birth" type="text"
										placeholder="???????????? ???: 1995/12/12" />
								</fieldset>
							</div>

							<!-- ?????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">??????</legend> <input
										class="form-control" id="emp_content" name="emp_content"type="text"
										placeholder="??????) 00??? 00??? 00?????? ??????"/>
								</fieldset>
							</div>

							<!-- ????????????, ????????? ?????? ?????? -->

							<div class="form-group">
								<fieldset>
									<legend class="mt-4">????????????</legend>
									 <input class="form-control" id="emp_profile" name="emp_profile" type="file"/>
									 <!--  input class="form-control" id="emp_profile" name="emp_profile" type="submit" value="upload"/-->
								</fieldset>
							</div>

							<!-- ???????????? -->

							<div class="form-group">
								<fieldset>
									<legend class="mt-4">????????????</legend>
									 <input
										class="form-control" id="emp_tel" name="emp_tel" type="text"
										placeholder="01077770000"/>
								</fieldset>
							</div>

							<!-- ?????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">??????</legend>
									<input
										class="form-control" id="emp_addr" name="emp_addr" type="text"
										placeholder="?????? : ??????????????? ?????????"/> 
								</fieldset>
							</div>


							<!-- ???????????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">?????? ??????</legend>
									 <input
										class="form-control" id="emp_workst" name="emp_workst" type="text"
										placeholder="???????????? : ??????"/>
								</fieldset>
							</div>


							<!-- ???????????? ????????? -->
							<div class="form-group">
								<fieldset>
									<legend class="mt-4">???????????? ?????????</legend>
									<input class="form-control" id="emp_workchdte" name="emp_workchdte" type="text"
										placeholder="???????????? : ????????? ?????? 2021/10/10" />
								</fieldset>
							</div>


							<!-- ??????, ????????? ??????????????? ???????????? ?????? -->
							<div class="d-grid gap-2">
								<button class="btn btn-lg btn-primary" type="submit" id="submitUser">????????????
									??????</button>
								<button class="btn btn-lg btn-primary" type="button" id="goDash">?????? ??????</button>
							</div>

						</form>
						<br>
						<!-- Section end -->
						</div>
					</div>
				</div>
			</div><!-- End of Main Content -->
			<jsp:include page="/common/footer.jsp" />
		</div><!-- End of Content Wrapper -->
	</div><!-- End of Page Wrapper -->
</div><!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> 
	<i class="fas fa-angle-up"></i>
</a>

<!-- Custom scripts for all pages-->
<script src="${path}/resources/js/sb-admin-2.min.js"></script>

<!-- Core plugin JavaScript-->
<script
	src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>