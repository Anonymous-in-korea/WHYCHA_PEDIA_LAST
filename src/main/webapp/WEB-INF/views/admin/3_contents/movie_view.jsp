<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_컨텐츠_상세페이지</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/3_contents/movie/movie_detail.css" rel="stylesheet"/>

		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
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
		                <h1 class="mt-4">영화</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        영화
		                    </div>
		                    <div class="card-body">
			                    <table class="movie_view_table">
			                    	<colgroup>
			                    		<col width="40%">
			                    		<col width="8%">
			                    		<col width="14%">
			                    		<col width="8%">
			                    		<col width="19%">
			                    	</colgroup>
			                    	<tr>
			                    		<th rowspan="6">
					                        <img src="/images/slamdunk.jpg" style="width:100%;">
			                    		</th>
			                    	</tr>
			                    	<tr>
			                    		<th style="border:2px solid gray">영화제목</th>
			                    		<td style="border:2px solid gray"><strong>더 퍼스트 슬램덩크</strong></td>
			                    		<th style="border:2px solid gray">원제</th>
			                    		<td style="border:2px solid gray"><strong>THE FIRST SLAM DUNK</strong></td>
			                    	</tr>
			                    	<tr>
			                    		<th style="border:2px solid gray">감독</th>
			                    		<td style="border:2px solid gray"><strong>이노우에 다케히코</strong></td>
			                    		<th style="border:2px solid gray">배우</th>
			                    		<td style="border:2px solid gray"><strong>누구, 누구, 누구, 누구, 누구</strong></td>
			                    	</tr>
			                    	<tr>
			                    		<th style="border:2px solid gray">제작연도<br>/ 제작국가</th>
			                    		<td style="border:2px solid gray"><strong>2022 / 일본</strong></td>
			                    		<th style="border:2px solid gray">장르</th>
			                    		<td style="border:2px solid gray"><strong>애니메이션 / 스포츠</strong></td>
			                    	</tr>
			                    	<tr>
			                    		<th style="border:2px solid gray">상영시간</th>
			                    		<td style="border:2px solid gray"><strong>2시간 4분</strong></td>
			                    		<th style="border:2px solid gray">연령등급</th>
			                    		<td style="border:2px solid gray"><strong>12세 관람가</strong></td>
			                    	</tr>
				                    <tr>
				                    	<th style="border:2px solid gray">내용</th>
				                    	<td colspan="3" style="border:2px solid gray">전국 제패를 꿈꾸는 북산고 농구부 5인방의 꿈과 열정,<br>멈추지 않는 도전을 그린 영화</td>
				                    </tr>
			                    </table>
		                    </div>
		                </div>
		                <div id="MBox">
		                    <button class="btn0" id="btn1" onclick="location.href='/admin/3_contents/movie_modify'">수정하기</button>
		                    <button class="btn0" id="btn2" onclick="location.href='/admin/3_contents/movie_list'">목록으로</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>
