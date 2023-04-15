<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>문의내역– 와이챠챠피디아 고객센터</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		<link href="/css/QnA_Mylist_SY.css" rel="stylesheet" type="text/css">
		<link href="/css/QnA_Write_SY.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

		<script>
			$(function() {
				/* 삼선아이콘 클릭시 하단 메뉴 생성  */

				  $(".dropdown-chevron-icon").click(function() {
					  $(".dropdown-menu").toggle();
					});
			});
		</script>
	</head>
	<body class="">
		<a class="skip-navigation" tabindex="1" href="/">주 콘텐츠로 건너뛰기</a>
		<header class="header">
			<div class="logo">
				<a title="홈" href="/QnA/QnA_SY?id=${sessionId}"> 
					<img src="/images/no1_WHYCHA_orange_resize2.png" alt="와이챠피디아 고객센터 헬프 센터 홈 페이지">
				</a>
			</div>
			<div class="nav-wrapper">
				<button class="menu-button" aria-controls="user-nav" aria-expanded="false" aria-label="탐색 메뉴 토글" style="display: none;">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" focusable="false" viewBox="0 0 16 16" class="icon-menu">
	        			<path fill="none" stroke="currentColor" stroke-linecap="round" d="M1.5 3.5h13m-13 4h13m-13 4h13"></path>
	      			</svg>
				</button>
				<nav class="user-nav" id="user-nav"></nav>
				<div class="user-info dropdown">
					<button class="dropdown-toggle" aria-haspopup="true">
							<span data-user-name="true">원수영</span> 
							<img src="https://i.ibb.co/TRFJCXr/2020-08-26-1-31-03.png" class="dropdown-chevron-icon" width="15" height="20" focusable="false" viewbox="0 0 12 12"  aria-hidden="true">
					</button>
					<div class="dropdown-menu" role="menu" aria-expanded="false">
						<a role="menuitem" href="/QnA/QnA_Mylist_SY">문의 내역</a> 
						<a role="menuitem" href="/QnA/QnA_Write_SY">문의 등록</a>
					</div>
				</div>
			</div>
		</header>
		<main role="main">
		<div class="container">
			<header class="my-activities-header">
				<h1>문의 내역</h1>
				<p>
					문의하신 내용은 고객센터에서 확인 후 영업일 기준 1~3일 이내에 답변 드리도록 하겠습니다. <br> *
					운영시간: 평일 (월 ~ 금) 10:00 ~ 18:00 <br>
				</p>
				<!--============================문의내역 리스트 start================================== -->
				<div class="requests">
					<table class="table my-activities-table requests-table my-requests">
						<colgroup>
						    <col style="width: 3%">
						    <col style="width: 57%">
						    <col style="width: 20%">
						    <col style="width: 20%">
						 </colgroup>
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th><a class="requests-link"
									href="/hc/ko/requests?sort_by=created_at&amp;sort_order=asc">등록일</a></th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${qnaListByPage}" var="qvo">
								<tr>
									<td>${qvo.id}</td>
									<td class="request-info requests-table-info">
										<a href="/QnA/QnA_Answer_SY?id=${qvo.id}" class="striped-list-title" title=""> ${qvo.question_title}</a>
											<div class="requests-table-meta meta-group">
												<span class="meta-data"> 
													<time datetime="2023-02-27T05:39:40+00:00" title="2023-02-27 14:39" data-datetime="relative">${qvo.regi_date} </time>
												</span>
											</div>
									</td>
									<td>${qvo.regi_date}</td>
									<td class="requests-table-status">
										<span class="status-label status-label-solved" title="답변을 확인해 주세요."  style="background-color: ${qvo.processing_statu == 2 ? '#feae27' : '#ff7f27'}">
											${qvo.processing_statu == 2 ? '처리중' : '답변완료'} 
										</span>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!--============문의내역 리스트 end=================== -->
			</div>

			<div class="pagination">
				  <ul class="page-num">
				    <c:if test="${page > 1}"><li class="first-page"><a href="/QnA/QnA_Mylist_SY?page=1&id=${sessionId}"></a></li></c:if>
				    <c:if test="${page == 1}"><li class="first-page"></li></c:if>
				    <c:if test="${page > 1}"><li class="prev-page"><a href="/QnA/QnA_Mylist_SY?page=${page-1}&id=${sessionId}"></a></li></c:if>
				    <c:if test="${page == 1}"><li class="prev-page"></li></c:if>
				    <c:forEach var="num" begin="${startPage}" end="${endPage}" step="1">
				      <c:if test="${page == num}"><li class="num on-page"><span>${num}</span></li></c:if>
				      <c:if test="${page != num}"><li class="num-page"><a href="/QnA/QnA_Mylist_SY?page=${num}&id=${sessionId}&start=${(num-1)*5}&end=${num*5-1}"><span>${num}</span></a></li></c:if>
				    </c:forEach>
				    <c:if test="${page < maxPage}"><li class="next-page"><a href="/QnA/QnA_Mylist_SY?page=${page+1}&id=${sessionId}"></a></li></c:if>
				    <c:if test="${page == maxPage}"><li class="next-page"></li></c:if>
				    <c:if test="${page < maxPage}"><li class="last-page"><a href="/QnA/QnA_Mylist_SY?page=${maxPage}&id=${sessionId}"></a></li></c:if>
				    <c:if test="${page == maxPage}"><li class="last-page"></li></c:if>
				  </ul>
				</div>
			
					<!--  -->
				</header>
				<p class="no-activities"></p>
				<div class="requests"></div>
			</div>
		</main>
		<!--footer 부분 start-->
		<footer style="top: 170px; padding-left: 20px;" class="css-wvwa3p">
			<div class="foo">
				<ul class="css-1wn0ztv">
					<li class="css-1w1gghd">와이챠 서비스 이용약관</a></li>
					<li class="css-1w1gghd">와이챠피디아 서비스 이용약관</a></li>
					<li class="css-1czlaix">개인정보 처리 방침</a></li>
					<li class="css-1w1gghd">회사소개</a></li>
					<li class="css-1w1gghd">채용정보</a></li>
				</ul>
				<ul class="css-37p0v">
					<li class="css-thfupn"><span class="css-uw7vnf">와이챠피디아 광고 문의</span> <span class="css-92plnc">ad@watcha.com</span></li>
					<li class="css-thfupn">
						<span class="css-uw7vnf">제휴 및 대외협력</span> 
						<span class="css-92plnc"><a href="https://watcha.team/contact" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">https://watcha.team/contact</a></span>
					</li>
				</ul>
			</div>
		</footer>
		<!--footer 부분 end-->
		<div>
			<div class="gG1SKx_8sRWXWUqBql1Ygd7tnyV_z43E"></div>
		</div>
	</body>
</html>