<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
    
		<script src="/js/admin/scripts.js"></script>
		<script src="/js/admin_logout.js"></script>
		
		<style>
			.middle_word {
				margin-top: 20px;
				margin-left: 16px;
				font-weight: 700;
			}
			
			a { text-decoration: none; }
		</style>
	</head>
	<body class="sb-nav-fixed">
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4" style="font-weight: 700">신고함</h1>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i>
								신고함
							</div>
							<h2 class="middle_word">대기중</h2>
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
		                    				<input type="search" title="Search within table" class="datatable-input" placeholder="검색어 입력"
		                    					aria-controls="datatablesSimple">
		                    			</div>
		                    		</div>
		                    		<div class="datatable-container">
		                    			<table class="datatable-table" id="datatablesSimple">
		                    				<colgroup>
												<col width="6%">
												<col width="14%">
												<col width="30%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
												<col width="10%">
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
		                    								신고자
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								댓글내용
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								유형
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								신고일자
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								처리일자
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								처리상태
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
		                    					<c:if test="${ result == 1 }">
		                    					<c:forEach items="${ adminReportListAll }" var="reportList">
		                    					<tr>
		                    						<td>${ reportList.id }</td>
		                    						<td>${ reportList.user_name }</td>
		                    						<td>
		                    							<c:forEach items="${ adminCommentListAll }" var="commentList">
		                    							<c:if test="${ reportList.reported_by_user == commentList.user_id }">
		                    							<a href="/admin/4_comment/reported/report_reply?id=${ reportList.id }">
		                    								${ commentList.comment_content }
		                    							</a>
		                    							</c:if>
		                    							</c:forEach>
		                    						</td>
		                    						<td>${ reportList.reported_reason }</td>
		                    						<td>${ reportList.regi_date }</td>
		                    						<c:if test="${ reportList.report_result != 0 }">
		                    						<td>${ reportList.processing_date }</td>
		                    						</c:if>
		                    						<c:if test="${ reportList.report_result == 0 }">
		                    						<td> </td>
		                    						</c:if>
		                    						<c:if test="${ reportList.report_result == 0 }">
		                    						<td>처리대기중</td>
		                    						</c:if>
		                    						<c:if test="${ reportList.report_result == 1 }">
		                    						<td>블라인드</td>
		                    						</c:if>
		                    						<c:if test="${ reportList.report_result == 2 }">
		                    						<td>문제없음</td>
		                    						</c:if>
		                    						<c:if test="${ reportList.report_result == 3 }">
		                    						<td>스포일러</td>
		                    						</c:if>
		                    					</tr>
		                    					</c:forEach>
		                    					</c:if>
		                    				</tbody>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    			</table>
		                    		</div>
		                    		<div class="datatable-bottom">
		                    			<div class="datatable-info">Showing 1 to 7 of 7 entries</div>
		                    		</div>
		                    	</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</body>
</html>