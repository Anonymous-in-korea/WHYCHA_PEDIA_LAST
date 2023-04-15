<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice.css" rel="stylesheet" />
		
		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/admin_logout.js"></script>
	</head>
	<body class="sb-nav-fixed">
	
		<c:if test="${ adminSessionEmail == null }">
	    	<script>alert("관리자계정으로 로그인 후 접속해주세요."); location.href="/admin/whycha_pedia_admin_login";</script>
    	</c:if>
	
		<div id="layoutSidenav">
		    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                	<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="../fragment/sidefooter.jsp" %>
					<%@ include file="../fragment/sidenav.jsp" %>
                </nav>
            </div>
            
		    <div id="layoutSidenav_content">
		        <main>
		            <div class="container-fluid px-4">
		                <h1 class="mt-4">공지사항</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항
		                    </div>
		                    <div class="card-body">
		                    	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                    		<div class="datatable-top">
		                    			<div class="datatable-dropdown">
		                    				<label>
		                    					<select class="datatable-selector">
		                    						<option value="5">5</option>
		                    						<option value="10" selected>10</option>
		                    						<option value="15">15</option>
		                    						<option value="20">20</option>
		                    						<option value="25">25</option>
		                    					</select>
		                    				</label>
		                    			</div>
		                    			<div class="datatable-search">
		                    				<input type="search" title="Search within table" class="datatable-input" placeholder="작성자계정 or 닉네임을 입력하세요."
		                    					aria-controls="datatablesSimple">
		                    			</div>
		                    		</div>
		                    		<div class="datatable-container">
				                    	<table class="notice_list_table">
				                    		<colgroup>
												<col width="7%">
												<col width="33%">
												<col width="15%">
												<col width="15%">
												<col width="15%">
												<col width="15%">
											</colgroup>
											<thead>
												<tr>
													<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								번호
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								제목
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								작성자
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								작성날짜
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								등록날짜
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								등록여부
		                    							</a>
		                    						</th>
												</tr>
											</thead>
											
											<tbody>
												<c:if test="${result == 1}">
												<c:forEach items="${adminAnnouncementListAll}" var="noticeList" varStatus="status">
												<tr>
													<td>${ noticeList.id }</td>
													<td><a href="/admin/1_notice/notice_view?id=${ noticeList.id }">${ noticeList.announcement_title }</a></td>
													<td>${ noticeList.admin_name }</td>
													<td>${ noticeList.announcement_date }</td>
													<c:if test="${ noticeList.is_regi == 1 }">
													<td> </td>
													</c:if>
													<c:if test="${ noticeList.is_regi == 2 }">
													<td>${ noticeList.update_date }</td>
													</c:if>
													<td>
														<c:if test="${ noticeList.is_regi == 1 }">
					                                    <button type="button" id="status_btn_active">미등록</button>
														</c:if>
														<c:if test="${ noticeList.is_regi == 2 }">
					                                    <button type="button" id="status_btn">등록</button>
														</c:if>
													</td>
												</tr>
												</c:forEach>
												</c:if>
												
												<c:if test="${result == 0}">
												<tr colspan="6">
													<td style="text-align:center;">등록된 공지사항이 없습니다.</td>
												</tr>
												</c:if>
											</tbody>
				                    	</table>
				                    </div>
								</div>
		                    </div>
		                </div>
		                <div id="NBox">
		                    <button id="btn1" onclick="location.href='/admin/1_notice/notice_write'">글작성</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
	</body>
</html>
