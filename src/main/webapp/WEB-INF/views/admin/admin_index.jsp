<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_메인페이지</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/scripts.js"></script>
		<script src="/js/admin_logout.js"></script>
		
		<style>
			a { text-decoration:none; }
		</style>
	</head>
    <body class="sb-nav-fixed">
    
    	<!-- 로그인 script start -->
		<c:if test="${ result == 1 }">
			<script>alert("로그인되었습니다");</script>
		</c:if>
		<c:if test="${ adminSessionEmail == null }">
			<script>alert("로그인을 해주세요"); location.href="/admin/whycha_pedia_admin_login";</script>
		</c:if>
		<!-- 로그인 script end -->
		
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                	<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="fragment/sidefooter.jsp" %>
					<%@ include file="fragment/sidenav.jsp" %>
                </nav>
            </div>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">관리자페이지</h1>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        날짜별 회원가입자 수
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        별점 등록 수
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <!-- 공지사항 section start -->
                        <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항
		                    </div>
		                    <div class="card-body">
		                    	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                            <div class="datatable-container">
		                                <table class="datatable-table" id="datatablesSimple">
		                                	<colgroup>
												<col width="10%">
												<col width="50%">
												<col width="20%">
												<col width="20%">
											</colgroup>
		                                    <thead>
		                                        <tr>
		                    						<th data-sortable="true" style="text-align:center;">번호</th>
		                    						<th data-sortable="true" style="text-align:center;">공지사항 제목</th>
		                    						<th data-sortable="true" style="text-align:center;">작성자</th>
		                    						<th data-sortable="true" style="text-align:center;">작성일</th>
		                    					</tr>
		                                    </thead>
		                                    <tbody id="tbody">
		                                    	<c:forEach items="${adminAnnouncementList}" var="noticeList" varStatus="status">
		                                        <tr>
		                                            <td>${ noticeList.id }</td>
		                                            <td><a href="">${ noticeList.announcement_title }</a></td>
		                                            <td>${ noticeList.admin_name }</td>
		                                            <td>${ noticeList.announcement_date }</td>
		                                        </tr>
		                                        </c:forEach>
		                                    </tbody>
		                                </table>
		                            </div>
								</div>
							</div>
                        </div>
                        <!-- 공지사항 section end -->
                        <!-- QnA section start -->
                        <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        QnA
		                    </div>
		                    <div class="card-body">
		                    	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                            <div class="datatable-container">
		                                <table class="datatable-table" id="datatablesSimple">
		                                	<colgroup>
												<col width="10%">
												<col width="50%">
												<col width="20%">
												<col width="20%">
											</colgroup>
		                                    <thead>
		                                        <tr>
		                    						<th data-sortable="true" style="text-align:center;">번호</th>
		                    						<th data-sortable="true" style="text-align:center;">QnA 제목</th>
		                    						<th data-sortable="true" style="text-align:center;">작성자</th>
		                    						<th data-sortable="true" style="text-align:center;">작성일</th>
		                    					</tr>
		                                    </thead>
		                                    <tbody id="tbody">
		                                    	<c:forEach items="${adminQnAList}" var="QnAList" varStatus="status">
		                                        <tr>
		                                            <td>${ QnAList.id }</td>
		                                            <td><a href="">${ QnAList.question_title }</a></td>
		                                            <td>${ QnAList.user_name }</td>
		                                            <td>${ QnAList.regi_date }</td>
		                                        </tr>
		                                        </c:forEach>
		                                    </tbody>
		                                </table>
		                            </div>
								</div>
							</div>
                        </div>
                        <!-- QnA section end -->
                        <!-- 코멘트 section start -->
                        <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        신고사항
		                    </div>
		                    <div class="card-body">
		                    	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                            <div class="datatable-container">
		                                <table class="datatable-table" id="datatablesSimple">
		                                	<colgroup>
												<col width="15%">
												<col width="15%">
												<col width="15%">
												<col width="20%">
												<col width="15%">
												<col width="20%">
											</colgroup>
		                                    <thead>
		                                        <tr>
		                    						<th data-sortable="true" style="text-align:center;">번호</th>
		                    						<th data-sortable="true" style="text-align:center;">작성자</th>
		                    						<th data-sortable="true" style="text-align:center;">신고사항</th>
		                    						<th data-sortable="true" style="text-align:center;">작성일</th>
		                    						<th data-sortable="true" style="text-align:center;">처리자</th>
		                    						<th data-sortable="true" style="text-align:center;">처리일</th>
		                    					</tr>
		                                    </thead>
		                                    <tbody id="tbody">
		                                    	<c:forEach items="${adminReportList}" var="ReportList" varStatus="status">
		                                        <tr>
		                                            <td>${ ReportList.id }</td>
		                                            <td>${ ReportList.user_name }</td>
		                                            <td><a href="">${ ReportList.reported_reason }</a></td>
		                                            <td>${ ReportList.regi_date }</td>
		                                            <td>${ ReportList.admin_name }</td>
		                                            <td>${ ReportList.processing_date }</td>
		                                        </tr>
		                                        </c:forEach>
		                                    </tbody>
		                                </table>
		                            </div>
								</div>
							</div>
                        </div>
                        <!-- 코멘트 section end -->
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/assets/demo/chart-area-demo.js"></script>
        <script src="/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/js/admin/datatables-simple-demo.js"></script>
    </body>
</html>
