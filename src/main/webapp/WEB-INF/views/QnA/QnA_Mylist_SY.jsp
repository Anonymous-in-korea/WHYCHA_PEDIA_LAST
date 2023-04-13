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
	<script type="text/javascript">
    $(document).ready(function() {
        var list_num = 5; // 한 페이지당 보여줄 리스트 개수
        var page_num = 5; // 페이지 개수
        var total_list_num = ${fn:length(list)}; // 총 리스트 개수
        var total_page_num = Math.ceil(total_list_num / list_num); // 총 페이지 개수
        var current_page = ${page}; // 현재 페이지
        var startPage = ${startPage}; // 시작 페이지
        var endPage = ${endPage}; // 끝 페이지
        var maxPage = ${maxPage}; // 최대 페이지

        var paging_html = '<ul>';

        console.log(total_list_num, total_page_num, current_page);

        // 이전 페이지 링크
        if (current_page > 1) {
            paging_html += '<li><a href="' + '${pageContext.request.contextPath}/QnA/QnA_List_SY?page=' + (current_page-1) + '${empty search ? '' : '&search=' + search}' + '">이전</a></li>';
        } else {
            paging_html += '<li class="disabled">이전</li>';
        }

        // 페이지 번호 링크
        for (var i = startPage; i <= endPage; i++) {
            if (i == current_page) {
                paging_html += '<li class="active"><a href="#">' + i + '</a></li>';
            } else {
                paging_html += '<li><a href="' + '${pageContext.request.contextPath}/QnA/QnA_List_SY?page=' + i + '${empty search ? '' : '&search=' + search}' + '">' + i + '</a></li>';
            }
        }

        // 다음 페이지 링크
        if (current_page < maxPage) {
            paging_html += '<li><a href="' + '${pageContext.request.contextPath}/QnA/QnA_List_SY?page=' + (current_page+1) + '${empty search ? '' : '&search=' + search}' + '">다음</a></li>';
        } else {
            paging_html += '<li class="disabled">다음</li>';
        }

        paging_html += '</ul>';

        $('.pagination').html(paging_html); // 페이지 번호 링크 출력
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
						<thead>
							<tr>
								<th>제목</th>
								<th><a class="requests-link"
									href="/hc/ko/requests?sort_by=updated_at&amp;sort_order=asc">마지막
										활동<span class="requests-sort-symbol">▼</span>
								</a></th>
								<th><a class="requests-link"
									href="/hc/ko/requests?sort_by=created_at&amp;sort_order=asc">등록일</a></th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="qvo">
								<tr>
									<td class="request-info requests-table-info"><a
										href="/QnA/QnA_Answer_SY?id=${qvo.id}"
										class="striped-list-title" title=""> ${qvo.question_title}</a>
										<div class="requests-table-meta meta-group">
											<span class="meta-data"> <time
													datetime="2023-02-27T05:39:40+00:00"
													title="2023-02-27 14:39" data-datetime="relative">
													${qvo.regi_date} </time>
											</span>
										</div></td>
									<td><time datetime="2023-03-07T00:59:09+00:00"
											title="2023-03-07 09:59" data-datetime="relative">1일 전</time></td>
									<td>${qvo.regi_date}</td>
									<td class="requests-table-status"><span
										class="status-label status-label-solved" title="답변을 확인해 주세요."
										style="background-color: ${qvo.processing_statu == 1 ? '#ff7f27' : '#feae27'}">
											${qvo.processing_statu == 2 ? '답변완료' : '처리중'} </span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!--============문의내역 리스트 end=================== -->
				<!--  -->
			</div>
<!--============페이징 시작=================== -->
<%-- <c:if test="${not empty list}"> --%>
<!--   <div class="pagination"> -->
<%--     이전 버튼 --%>
<%--     <c:if test="${pg > 0}"> --%>
<%--       <a href="${pageContext.request.contextPath}/QnA/QnA_List_SY?pg=${pg - 1}${empty search ? '' : '&search=' + search}"> --%>
<!--         <i class="fa fa-angle-left"></i> -->
<!--       </a> -->
<%--     </c:if> --%>
<%--     페이지 번호 버튼 --%>
<%--     <c:forEach begin="0" end="${Math.floor((fn:length(list) - 1) / 5)}" var="i"> --%>
<%--       <a href="${pageContext.request.contextPath}/QnA/QnA_List_SY?pg=${i}${empty search ? '' : '&search=' + search}" --%>
<%--         class="${i == pg ? 'active' : ''}">${i + 1}</a> --%>
<%--     </c:forEach> --%>
<%--     다음 버튼 --%>
<%--     <c:if test="${pg < fn:length(list) / 5 - 1}"> --%>
<%--       <a href="${pageContext.request.contextPath}/QnA/QnA_List_SY?pg=${pg + 1}${empty search ? '' : '&search=' + search}"> --%>
<!--         <i class="fa fa-angle-right"></i> -->
<!--       </a> -->
<%--     </c:if> --%>
<!--   </div> -->
<%-- </c:if> --%>
<!--============페이징 끝=================== -->
<!-- 페이징 -->
				<!-- 페이징 -->
					<div class="pagination">
						<ul class="page-num">
							<c:if test="${page > 1}">
								<li class="first-page"><a href="/QnA/QnA_Mylist_SY?page=1"></a>
								</li>
							</c:if>
							<c:if test="${page == 1}">
								<li class="first-page"></li>
							</c:if>
			
							<c:if test="${page > 1}">
								<li class="prev-page"><a
									href="/QnA/QnA_Mylist_SY?page=${page-1}"></a></li>
							</c:if>
							<c:if test="${page == 1}">
								<li class="prev-page"></li>
							</c:if>
			
							<c:forEach var="num" begin="${startPage}" end="${endPage}" step="1">
								<c:if test="${page == num}">
									<li class="num on-page">
										<div>${num}</div>
									</li>
								</c:if>
								<c:if test="${page != num}">
									<li class="num-page"><a href="/QnA/QnA_Mylist_SY?page=${num}">
											<div>${num}</div>
									</a></li>
								</c:if>
							</c:forEach>
			
							<c:if test="${page < maxPage}">
								<li class="next-page"><a
									href="/QnA/QnA_Mylist_SY?page=${page+1}"></a></li>
							</c:if>
							<c:if test="${page == maxPage}">
								<li class="next-page"></li>
							</c:if>
			
							<c:if test="${page < maxPage}">
								<li class="last-page"><a
									href="/QnA/QnA_Mylist_SY?page=${maxPage}"></a></li>
							</c:if>
							<c:if test="${page == maxPage}">
								<li class="last-page"></li>
							</c:if>
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
					<li class="css-1w1gghd"><a href="https://watcha.com/legals/play_agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">와이챠 서비스 이용약관</a></li>
					<li class="css-1w1gghd"><a href="https://watcha.com/legals/agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">와이챠피디아 서비스 이용약관</a></li>
					<li class="css-1czlaix"><a href="https://watcha.com/legals/privacy" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">개인정보 처리 방침</a></li>
					<li class="css-1w1gghd"><a href="https://team.watcha.com" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">회사소개</a></li>
					<li class="css-1w1gghd"><a href="https://watcha.team/81b8ab72-1a44-4d6c-a418-bbaed702c429" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">채용정보</a></li>
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