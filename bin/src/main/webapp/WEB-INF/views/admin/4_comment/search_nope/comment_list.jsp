<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>Dashboard - SB Admin</title>
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/adstyle.css" rel="stylesheet">
		<script>
			function commentDetail(idx){
				console.log("commentDetail 함수 발동");
				location.href="";
			}
		</script>
		
		<style>
			a { text-decoration: none; }
		</style>
	</head>
	<body class="sb-nav-fixed">
		<!-- topbar.html -->
		<div th:replace="fragment/topbar :: topbar(${adminIdx}, ${adminType})"></div>
		<!-- topbar.html 끝 -->
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>
	
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4">코멘트</h1>
						<div class="row"></div>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i><!--이미지-->
								코멘트 조회
							</div>
							<div class="card-body">
								<table id="datatablesSimple">
									<thead>
										<tr>
											<th>번호</th>
											<th>작성자(계정)</th>
											<th>구분</th>
											<th>제목</th>
											<th>좋아요수</th>
											<th>댓글수</th>
											<th>등록시간</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>1</th>
											<th>Position</th>
											<th>Office</th>
											<th>Age</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</tfoot>
									<tbody id="comment-table">
										<tr class="comment-tr">
											<td class="comment-idx" >1</td>
											<td class="comment-username">영화에 진심인 망고✅</td>
											<td class="comment-content-type">movie</td>
											<td class="comment-title"><a>아바타</a></td>
											<td class="comment-userIdx">22</td>
											<td class="comment-contentidx" >113</td>
											<td class="comment-regdate">2022-09-23</td>
										</tr>
										<tr>
											<td></td>
											<td>Junior Technical Author</td>
											<td>San Francisco</td>
											<td>66</td>
											<td>2009/01/12</td>
											<td>$86,000</td>
										</tr>
										<tr>
											<td></td>
											<td>Senior Javascript Developer</td>
											<td>Edinburgh</td>
											<td>22</td>
											<td>2012/03/29</td>
											<td>$433,060</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="/js/admin/scripts.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
		<script src="/assets/demo/chart-area-demo.js"></script>
		<script src="/assets/demo/chart-bar-demo.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
		<script src="/js/admin/datatables-simple-demo.js"></script>
	</body>
</html>