<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<title>OnBiz</title>
</head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
<style>
body { font-family: 'Open Sans', Arial, Helvetica, sans-serif;}
</style>
<body>
        <!-- 왼쪽 슬라이드바 -->
        <ul class="navbar-nav bg-gray-900 sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${path}/dash.do">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-chart-pie"></i>
                </div>
                <div class="sidebar-brand-text mx-3 text-warning">ONBIZ</div>
            </a><br>
			<br>
            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="${path}/dash.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>대시보드</span></a>
            </li>
			<br>
            <!-- Heading -->
            <div class="sidebar-heading">
                프로젝트
            </div>

            <!-- 네비게이션1 : 프로젝트 관련 메뉴 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProject"
                    aria-expanded="true" aria-controls="collapseProject">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>프로젝트</span>
                </a>
                <div id="collapseProject" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="${path}/getViewProReg.do">프로젝트 등록</a>
                        <a class="collapse-item" href="${path}/prolist3.do">프로젝트 관리</a>
                        <a class="collapse-item" href="${path}/ongantt.do?method=gantt">작업할당</a>
                        <a class="collapse-item" href="${path}/onboard.do?method=list">커뮤니티</a>
                    </div>
                </div>
            </li>

            <!-- 네비게이션2 : 내 작업 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTask"
                    aria-expanded="true" aria-controls="collapseTask">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>내 작업</span>
                </a>
                <div id="collapseTask" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="${path}/ontask.do?method=mygantt">간트차트</a>
                        <a class="collapse-item" href="${path}/ontask.do?method=mytaskList">작업관리</a>
                        <a class="collapse-item" href="${path}/onapproval.do?method=applist">결재관리</a>
                    </div>
                </div>
            </li>

            <!-- 네비게이션3 : 리스크관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRisk"
                    aria-expanded="true" aria-controls="collapseRisk">
                    <i class="fas fa-cogs"></i>
                    <span>리스크</span>
                </a>
                <div id="collapseRisk" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="">리스크내역</a>
                        <a class="collapse-item" href="${path}/Onrisk.do?method=list&emp_korname=${login.emp_korname}&emp_no=${login.emp_no}&auth_name=${login.auth_name}">리스크관리</a>
                   </div>
                </div>
            </li>
            <br>
            <!-- Heading -->
            <div class="sidebar-heading">
                개인
            </div>
            
            <!-- 네비게이션4: 일정관리 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCalendar"
                    aria-expanded="true" aria-controls="collapseCalendar">
                    <i class="fas fa-user"></i>
                    <span>일정</span>
                </a>
                <div id="collapseCalendar" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="${path}/oncal.do?method=calview">일정관리</a>
                    </div>
                </div>
            </li>

        </ul>
        <!-- 사이드바 끝 -->

</body>
</html>