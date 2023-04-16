<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨텐츠 정보 상세페이지</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<link href="/css/header.css" rel="stylesheet" type="text/css">
<link href="/css/login.css" rel="stylesheet" type="text/css">
<link href="/css/content_info_page.css" rel="stylesheet" type="text/css">

<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	font-family: 'Noto Sans KR', sans-serif;
}

.square_div {
	position: relative;
	width: 100%;
}
</style>

<script>
	$(function() {
		/* 로그인 창 띄우기 */
		$(".login_button").click(function() {
			if ($(".css-14gy7wr").css("display") == "none") {
				$(".css-14gy7wr").show();
			}
		});
		/* 로그인 창 내리기 */
		$(".css-14gy7wr").click(function() {
			if ($(".css-14gy7wr").css("display") != "none") {
				$(".css-14gy7wr").hide();
			}
		});
	});
</script>
</head>
<body>
	<div id="root">
		<div class="css-5jq76">
			<div class="square_div">

				<!-- header start -->
				<%@ include file="../head_foot/header.jsp"%>
				<!-- header end -->

				<section class="section">
					<section class="secion2 e1ntr3260">
						<header class="section2_header">
							<div class="header_div">
								<div>
									<button class="history_back e1t9gclr0 e1k34u8y0" onclick="location.href='/contents/contents_SH?movie_id=${movieVo.id}'"></button>
								</div>
							</div>
							<div class="header_title_div">
								<div class="header_title">기본 정보</div>
							</div>
							<div class="header_title2">기본 정보</div>
						</header>
						<div class="section2_content_div emmoxnt0">
							<ul class="section2_content_ul e1kvv3950">
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">영어 제목</dt>
									<dd class="section2_content_dd e1kvv3953">${movieVo.movie_original_title}</dd>
								</dl>
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">제작 연도</dt>
									<dd class="section2_content_dd e1kvv3953"><fmt:formatDate value="${movieVo.movie_release_date}" pattern="yyyy"/></dd>
								</dl>
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">국가</dt>
									<dd class="section2_content_dd e1kvv3953">${country}</dd>
								</dl>
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">장르</dt>
									<dd class="section2_content_dd e1kvv3953">${genre}</dd>
								</dl>
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">상영시간</dt>
									<dd class="section2_content_dd e1kvv3953">${movieVo.movie_running_time}분</dd>
								</dl>
								<dl class="section2_content_dl e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">연령 등급</dt>
									<dd class="section2_content_dd e1kvv3953">${movieVo.movie_grade}</dd>
								</dl>
								<dl class="section2_content_dl2 e1kvv3951">
									<dt class="section2_content_dt e1kvv3952">내용</dt>
									<c:if test="${movieVo.movie_desc == '0' }">
									<dd class="section2_content_dd2 e1kvv3954">영화 내용이 등록되지 않았습니다.</dd>
									</c:if>
									<c:if test="${movieVo.movie_desc != '0' }">
									<dd class="section2_content_dd2 e1kvv3954">${movieVo.movie_desc}</dd>
									</c:if>
								</dl>
							</ul>
						</div>
					</section>
				</section>
			</div>
		</div>
	</div>
</body>
</html>