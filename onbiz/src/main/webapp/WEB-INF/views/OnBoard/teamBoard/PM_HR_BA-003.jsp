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
<link rel="stylesheet" href="${path}/settings/jquery-ui.css">
<link rel="stylesheet" href="${path}/settings/bootstrap.min3.css">
<!--  1001 위에 설정들을 그대로 가져가주세요~! 그리고 밑에 각 부분에 맞게 include 파일을 넣어주세요! 
	sidebar, header, footer 있고 body에는 id="page-top" 설정해주셔야 위로 스크롤링 될거에요 -->
<style type="text/css">

   .card-body {padding:0 1% 0 1%;}
   .breadcrumb {margin:1%;}
   .nav nav-tabs {margin:1%;}
   #pagePath {padding:1%; background:transparent;}

</style>
<script type="text/javascript">

	$(document).ready(function(){
		
		// 세션 호출
		var userSession = "${login}";
	    var name = "${login.emp_korname}";
	    console.log("유저세션 확인: " + userSession);
	    console.log("이름 확인 : " + name);
	    
	    var login_emp_no = "${login.emp_no}";
	    var login_mem_no = "${mymem_no}";
	    console.log("로그인유저의 emp_no : " + login_emp_no);
	    console.log("선택한 프로젝트의 멤버번호 : " + login_mem_no);			
		
		$("#goMain").click(function() {
			if(confirm("메인으로 이동하시겠습니까?")) {
				$(location).attr("href","${path}/onboard.do?method=list");					
			}
		});

		$("#uptBtn").click(function() {

			if(confirm("게시물을 수정하시겠습니까?")) {
				alert("게시물 수정이 완료되었습니다.");
				$("form").attr("action","${path}/onboard.do?method=update");
				$("form").submit();
			}			
			
		});
		
		$("#delBtn").click(function() {
			if(confirm("게시물을 삭제하시겠습니까?")) {
				alert("게시물 삭제가 완료되었습니다.");
				var bd_no = $("input[name=bd_no]").val();
				$(location).attr("href","${path}/onboard.do?method=delete&bd_no="+bd_no);					
			}
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
              <li class="breadcrumb-item">프로젝트</li>
              <li class="breadcrumb-item">커뮤니티</li>
              <li class="breadcrumb-item"><a href="${path}/onboard.do?method=list">공지사항</a></li>
              <li class="breadcrumb-item active">공지사항 상세</li>
            </ol>
                
               <ul class="nav nav-tabs">
                 <li class="nav-item">
                   <a class="nav-link active" data-bs-toggle="tab" href="${path}/onboard.do?method=list">공지사항</a>
                 </li>
                 <li class="nav-item">
                   <a class="nav-link" data-bs-toggle="tab" href="${path}/onchatting.do">채팅</a>
                 </li>
               </ul>  									   
                                
                <form method="post">
               <%-- <input type="hidden" name="curPage" value="1"/> --%>
                    <!-- DataTales Example -->
                  
                    <div class="card my-4">
                        <h5 class="card-header">공지사항 상세</h5>
                        <div class="card-body">
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">NO</label>
				                	<div class="col-sm-5">
				                       <input type="text" class="form-control" name="bd_no" value="${bd.bd_no}" readonly/>
				                    </div>
				               	<label class="col-sm-1 col-form-label text-center">REFNO</label>
				                    <div class="col-sm-5">
				                       <input type="text" class="form-control" name="bd_refno" value="${bd.bd_refno}" readonly/>
				                    </div>
				            </div>
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">작성자</label>
				                	<div class="col-sm-5">
				                       <input type="text" class="form-control" name="mem_no" value="${bd.mem_no}" readonly/>
				                    </div>
				               	<label class="col-sm-1 col-form-label text-center">조회수</label>
				                    <div class="col-sm-5">
				                       <input type="text" class="form-control" name="bd_viewcnt" value="${bd.bd_viewcnt}" readonly/>
				                    </div>
				            </div>
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">등록일</label>
				                	<div class="col-sm-5">
				                       <input type="text" class="form-control" value="<fmt:formatDate pattern="YYYY-MM-dd kk:mm:ss" value='${bd.bd_regdte}'/>" readonly/>
				                    </div>
				               	<label class="col-sm-1 col-form-label text-center">수정일</label>
				                    <div class="col-sm-5">
				                       <input type="text" class="form-control" value="<fmt:formatDate pattern="YYYY-MM-dd kk:mm:ss" value='${bd.bd_uptdte}'/>" readonly/>
				                    </div>
				            </div>				            
							<div class="form-group row">
				            	<label class="col-sm-1 col-form-label text-center">제목</label>
				                	<div class="col-sm-11">
				                       <input type="text" class="form-control" name="bd_name" value="${bd.bd_name}"/>
				                    </div>
				                    &nbsp;
				                	<div class="col-sm-12">
				                       <textarea name="bd_content" rows="12" class="form-control">${bd.bd_content}</textarea>
				                    </div>
				            </div>				            			            
                        </div>
                      
                    	<div style="text-align:right; margin:1%;">				
							<button type="button" id="uptBtn" class="btn btn-outline-info">수정</button>
							<button type="button" id="delBtn" class="btn btn-outline-danger">삭제</button>
							<button type="button" id="goMain" class="btn btn-outline-info">메인</button>
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
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
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
    
    <!--  하단에 js 파일 설정도 넣어주세요!  -->
    <!-- Custom scripts for all pages-->
    <script src="${path}/resources/js/sb-admin-2.min.js"></script>
	
	<!-- Bootstrap core JavaScript-->
    <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>    
        
</body>
</html>