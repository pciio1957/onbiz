<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>OnBiz</title>
<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!-- Custom styles for this template-->
<script src="${path}/settings/jquery.min.js"></script>
<script src="${path}/settings/jquery-ui.js"></script>
<script src="${path}/settings/bootstrap.min.js"></script>
<script src="${path}/settings/popper.min.js"></script>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<!-- CSS 템플릿 추가 (10.04) -->
<link href="${path}/resources/css/sb-admin-2.css" rel="stylesheet">
<link rel="stylesheet" href="${path}/settings/bootstrap-datepicker3.standalone.css">
<!-- CSS 템플릿 -->
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<!--  1001 위에 설정들을 그대로 가져가주세요~! 그리고 밑에 각 부분에 맞게 include 파일을 넣어주세요! 
	sidebar, header, footer 있고 body에는 id="page-top" 설정해주셔야 위로 스크롤링 될거에요 -->
	
<script src="${path}/settings/bootstrap-datepicker.js"></script>
<script src="${path}/settings/bootstrap-datepicker.ko.min.js"></script>
	
<style type="text/css">

   .card-body {padding:0 1% 0 1%;}
   .breadcrumb {margin:1%;}
   .nav nav-tabs {margin:1%;}
   #pagePath {padding:1%; background:transparent;}

</style>
<script type="text/javascript">
	
	$(document).ready(function() {
		
		// 세션 호출
		var userSession = "${login}";
	    var name = "${login.emp_korname}";
	    var login_emp_no = "${login.emp_no}";
	    var login_auth_name = "${login.auth_name}";
	    var login_mem_no = "${mymem_no}";
	    var outputSession = "${output}";
	   	var outputFile = "${output.opt_name}";
	    console.log("유저세션 확인: " + userSession);
	    console.log("이름 확인 : " + name);
	    console.log("로그인유저의 emp_no : " + login_emp_no);
	    console.log("로그인유저의 auth_name : " + login_auth_name);
	    console.log("선택한 프로젝트의 멤버번호 : " + login_mem_no); 
	    console.log("산출물 파일 객체 : " + outputSession);
	    console.log("산출물 파일명 : " + outputFile);
	    		
		$("#goMain").click(function() {
			if(confirm("메인으로 이동하시겠습니까?")) {
				$(location).attr("href","${path}/onapproval.do?method=applist");	
			}
		});
		
		// 다운로드 여부
		$("#output").click(function() {
			var fname=$(this).val();
			if(confirm("산출물을 다운로드 하시겠습니까?")) {
				$(location).attr("href", "${path}/onapproval.do?method=download&opt_name="+opt_name);
			}
		});
		
		$("#output").click(function() {
			location.href="${path}/download.do?opt_name="+$(this).val();
		});			

	});	
	
</script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
    	<jsp:include page="/common/sidebar.jsp"/>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
			<jsp:include page="/common/header.jsp"/>
                
                <!-- !!섹션 : 구현 내용 입력부분!! -->
                <div class="container-fluid">
                
				<ol class="breadcrumb" id="pagePath">
					<li class="breadcrumb-item">내 작업</li>
					<li class="breadcrumb-item">결재관리</li>
					<li class="breadcrumb-item"><a href="${path}/onapproval.do?method=applist">결재목록</a></li>
					<li class="breadcrumb-item active">결재상세</li>
				</ol>
               
				<form id="list" action="${path}/onapproval.do?method=applist" method="post">
					<input type="hidden" value="1">
				</form>               
               
               <form id="onapproval" enctype="multipart/form-data" action="${path}/onapproval.do?method=update" method="post">
               		<input type="hidden"/>
                    <!-- DataTales Example -->
                  
                    <div class="card my-4">
                        <h5 class="card-header">결재 상세</h5>
                        <div class="card-body">
                        
                        	<!-- 상세 조회 화면 -->
                        	
                        	<!-- 결재, 작업번호 -->
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">결재번호</label>
				                	<div class="col-sm-5">
				                       <input name="app_no" value="${dt.app_no}" class="form-control" disabled/>
				                    </div>
				            	<label class="col-sm-1 col-form-label text-center">작업번호</label>
				                	<div class="col-sm-5">
				                       <input name="task_no" value="${dt.task_no}" class="form-control" disabled/>
				                    </div>
				            </div>
				            
				            <!-- 프로젝트, 결재기간(등록일, 만료일) -->
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">프로젝트</label>
				                	<div class="col-sm-5">
				                       <input value="${dt.pro_name}" class="form-control" disabled/>
				                    </div>							
							
				               	<label class="col-sm-1 col-form-label text-center">결재기간</label>
				                    <div class="col-sm-2">
				                       <input type="text" name="app_regdte" value="${dt.app_regdte}" class="form-control" disabled/>
				                    </div>
				                    <div class="col-sm-2">
				                       <input type="text" name="app_deadline" value="${dt.app_deadline}" class="form-control" disabled/>	
				                    </div>
				            </div>
				            
				            <!-- 작업명, 결재 승인일 -->
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">작업명</label>
				                	<div class="col-sm-5">
				                       <input name="task_name" value="${dt.task_name}" class="form-control" disabled/>
				                    </div>
							
				               	<label class="col-sm-1 col-form-label text-center">승인일</label>
				                    <div class="col-sm-5">
				                       <input type="text" id="app_appdte" name="app_appdte" value="${dt.app_appdte}" placeholder="YYYY-MM-DD" class="form-control" disabled/>
				                    </div>							
				            </div>
				            
				            <!-- 작업명, 결재 승인일 -->		            
							<div class="form-group row">
				               	<label class="col-sm-1 col-form-label text-center">작업내용</label>
				                    <div class="col-sm-5">
				                       <input type="text" name="task_content" value="${dt.task_content}" class="form-control" disabled/>
				                    </div>							
							
				            	<label class="col-sm-1 col-form-label text-center">요청내용</label>
				                	<div class="col-sm-5">
				                       <input name="app_content" value="${dt.app_content}" class="form-control" disabled/>
				                    </div>
				            </div>
				            
				            <!-- 첨부파일, 결재 답변 -->	
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">첨부파일</label>
				                	<div class="col-sm-5">
				                       <input type="text" id="output" value="${output.opt_name}" class="form-control" readonly/>
				                    </div>								
							
				               	<label class="col-sm-1 col-form-label text-center">답변</label>
				                    <div class="col-sm-5">
				                       <input name="app_comment" value="${dt.app_comment}" class="form-control" disabled/>
				                    </div>				                    				                    
				            </div>
				            
				            <!-- 승인여부, 작업상태여부 -->	
							<div class="form-group row">
				               	<label class="col-sm-1 col-form-label text-center">승인여부</label>
				                    <div class="col-sm-5">
										<input name="app_state" value="${dt.app_state}" class="form-control" disabled/>
				                    </div>
				                    
				               	<label class="col-sm-1 col-form-label text-center">작업상태</label>
				                    <div class="col-sm-5">
										<input name="task_state" value="${dt.task_state}" class="form-control" disabled/>
				                    </div>
				            </div>
				            
				            <!-- 담당자 -->
				           <div class="form-group row">         			                    
				               	<label class="col-sm-1 col-form-label text-center">담당자</label>
				                    <div class="col-sm-5">
				                       <input name="emp_korname" value="${login.emp_korname}" class="form-control" disabled/>
				                    </div>
				           </div>
				           
				           <!-- 상세 조회 화면 끝 -->
				            			                       			            			            
                        </div>
                      
                    	<div style="text-align:right; margin:1%;">
                    			<button type="button" id="goMain" class="btn btn-outline-warning">메인</button>
						</div>
                        
                    </div>
                    
                    </form>
                
                </div>
                <!--  섹션 끝  -->

            </div>
            <!-- End of Main Content -->
			<jsp:include page="/common/footer.jsp"/>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>    
    
    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>      
        
</body>
</html>