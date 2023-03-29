<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link defer href="/css/admin/styles.css" rel="stylesheet" />
		<link defer href="/css/admin/5_character/character_manage.css" rel="stylesheet" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
		
		<script defer src="/js/admin/scripts.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
	</head>
	<body class="sb-nav-fixed">
		<div id="layoutSidenav">
	    	<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
					<%@ include file="../fragment/sidefooter.jsp" %>
					<%@ include file="../fragment/sidenav.jsp" %>
				</nav>
			</div>

			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4">인물관리</h1>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i>
								인물관리
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
		                    				<input type="search" title="Search within table" class="datatable-input" placeholder="이름으로 검색"
		                    					aria-controls="datatablesSimple">
		                    			</div>
		                    		</div>
		                    		<div class="datatable-container">
		                    			<table class="datatable-table" id="datatablesSimple">
		                    				<colgroup>
												<col width="10%">
												<col width="30%">
												<col width="30%">
												<col width="30%">
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
		                    								프로필사진
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								이름
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								직업
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
		                    					<tr>
		                    						<td>1</td>
		                    						<td>
		                    							<a href="/admin/5_character/character_detail">
		                    								<img src="/images/slamdunk.jpg">
		                    							</a>
		                    						</td>
		                    						<td>잘생긴오이</td>
		                    						<td>도르마무</td>
		                    					</tr>
		                    					<tr>
		                    						<td>2</td>
		                    						<td>
		                    							<a href="/admin/3_contents/movie_view">
		                    								<img src="/images/slamdunk.jpg">
		                    							</a>
		                    						</td>
		                    						<td>잘생긴오이</td>
		                    						<td>도르마무</td>
		                    					</tr>
		                    					<tr>
		                    						<td>3</td>
		                    						<td>
		                    							<a href="/admin/3_contents/movie_view">
		                    								<img src="/images/slamdunk.jpg">
		                    							</a>
		                    						</td>
		                    						<td>잘생긴오이</td>
		                    						<td>도르마무</td>
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
							<div id="MBox">
								<button id="btn1" onclick="location.href='/admin/5_character/character_input'">인물등록</button>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</body>
</html>
