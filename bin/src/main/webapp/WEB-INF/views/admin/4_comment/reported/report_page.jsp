<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
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
		                    					<tr>
		                    						<td>1</td>
		                    						<td>신고자1</td>
		                    						<td>
		                    							<a href="/admin/4_comment/reported/report_reply">
		                    								얘쨰럐고~~~~ 예베베베벱~~~ 응 아무고토 모타쥬??
		                    							</a>
		                    						</td>
		                    						<td>부적절</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-20</td>
		                    						<td>대기중</td>
		                    					</tr>
		                    					<tr>
		                    						<td>2</td>
		                    						<td>신고자2</td>
		                    						<td>
		                    							<a href="/admin/4_comment/reported/report_reply">
		                    								대댓글
		                    							</a>
		                    						</td>
		                    						<td>부적절</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-20</td>
		                    						<td>대기중</td>
		                    					</tr>
		                    					<tr>
		                    						<td>3</td>
		                    						<td>신고자3</td>
		                    						<td>
		                    							<a href="/admin/4_comment/reported/report_reply">
		                    								대댓글
		                    							</a>
		                    						</td>
		                    						<td>0</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-20</td>
		                    						<td>대기중</td>
		                    					</tr>
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