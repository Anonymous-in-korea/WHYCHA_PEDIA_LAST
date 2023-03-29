<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>요청 – 왓챠피디아 고객센터</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<link href="/css/QnA_Mylist.css" rel="stylesheet" type="text/css">

		<link rel="shortcut icon" type="image/x-icon" href="//theme.zdassets.com/theme_assets/9911886/822c7d38711c87ef96894066eb2f7f1f4a1b679d.ico">
		<link rel="shortcut icon" type="image/x-icon" href="https://theme.zdassets.com/theme_assets/9911886/822c7d38711c87ef96894066eb2f7f1f4a1b679d.ico">
		<link rel="stylesheet" href="//static.zdassets.com/hc/assets/application-2cf4ebf5037c9419ebc68104b11bc22a.css" media="all" id="stylesheet">
		<link rel="stylesheet" type="text/css" href="//p25.zdassets.com/hc/theming_assets/9911886/900000429146/style.css?digest=14909749676569">
		<link rel="icon" type="image/x-icon" href="//theme.zdassets.com/theme_assets/9911886/822c7d38711c87ef96894066eb2f7f1f4a1b679d.png">
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	</head>
	<body class="">
		<a class="skip-navigation" tabindex="1" href="#main-content">주 콘텐츠로 건너뛰기</a>
		<header class="header">
			<div class="logo">
				<a title="홈" href="/hc/ko"> 
					<img src="//theme.zdassets.com/theme_assets/9911886/3440919ca9ca844a1d733b48a46fce8ee5208620.png" alt="왓챠피디아 고객센터 헬프 센터 홈 페이지">
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
						<a role="menuitem" href="/hc/ko/requests">문의 내역</a> 
						<a role="menuitem" href="/hc/ko/requests/new">문의 등록</a>
					</div>
				</div>
			</div>
		</header>
		<main role="main">
			<div class="container">
				<header class="my-activities-header">
					<h1>문의 내역</h1>
					<p>
						문의하신 내용은 고객센터에서 확인 후 영업일 기준 1~3일 이내에 답변 드리도록 하겠습니다. <br> 
						* 운영시간: 평일 (월 ~ 금) 10:00 ~ 18:00 <br>
					</p>
		<!--============================문의내역 리스트 start================================== -->
					<div class="requests">
						<table class="table my-activities-table requests-table my-requests">
							<thead>
								<tr>
									<th>제목</th>
									<th><a class="requests-link" href="/hc/ko/requests?sort_by=created_at&amp;sort_order=asc">만듦</a></th>
									<th><a class="requests-link" href="/hc/ko/requests?sort_by=updated_at&amp;sort_order=asc">마지막 활동<span class="requests-sort-symbol">▼</span></a></th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="request-info requests-table-info">
										<a href="/hc/ko/requests/253965" class="striped-list-title" title=""> 화제의 배우 경우 어떻게 선정되는건가요? </a> <!-- Visible on mobile -->
										<div class="requests-table-meta meta-group">
											<span class="meta-data">
												  <time datetime="2023-02-27T05:39:40+00:00" title="2023-02-27 14:39" data-datetime="relative">
													  9일 전
												  </time>
											  </span> 
											<span class="status-label status-label-solved" title="답변을 확인해 주세요.">답변완료</span>
										</div>
									</td>
									<td>
										<time datetime="2023-02-27T05:39:40+00:00" title="2023-02-27 14:39" data-datetime="relative">9일 전</time>
									</td>
									<td><time datetime="2023-03-07T00:59:09+00:00" title="2023-03-07 09:59" data-datetime="relative">1일 전</time></td>
									<td class="requests-table-status">
										<span class="status-label status-label-solved" title="답변을 확인해 주세요.">답변완료</span>
									</td>
								</tr>
								<tr>
									<td class="request-info requests-table-info">
										<a href="/hc/ko/requests/254895" class="striped-list-title" title="">
										    프로필 수정도 웹에서는 불가능 한가요? 
										</a>
										<div class="requests-table-meta meta-group">
											<span class="meta-data">
												<time datetime="2023-03-06T06:38:07+00:00" title="2023-03-06 15:38" data-datetime="relative">2일 전</time>
											</span> 
											<span class="status-label status-label-solved" title="답변을 확인해 주세요.">답변완료</span>
										</div>
									</td>
									<td>
										<time datetime="2023-03-06T06:38:07+00:00" title="2023-03-06 15:38" data-datetime="relative">2일 전</time>
									</td>
									<td>
										<time datetime="2023-03-06T06:42:11+00:00" title="2023-03-06 15:42" data-datetime="relative">2일 전</time>
									</td>
									<td class="requests-table-status">
										<span class="status-label status-label-solved" title="답변을 확인해 주세요.">답변완료</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--============문의내역 리스트 end=================== -->
				</header>
				<p class="no-activities"></p>
				<div class="requests"></div>
			</div>
		</main>
		<!--footer 부분 start-->
		<footer style="top: 170px; padding-left: 20px;" class="css-wvwa3p">
			<div class="foo">
				<ul class="css-1wn0ztv">
					<li class="css-1w1gghd"><a href="https://watcha.com/legals/play_agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">왓챠 서비스 이용약관</a></li>
					<li class="css-1w1gghd"><a href="https://watcha.com/legals/agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">왓챠피디아 서비스 이용약관</a></li>
					<li class="css-1czlaix"><a href="https://watcha.com/legals/privacy" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">개인정보 처리 방침</a></li>
					<li class="css-1w1gghd"><a href="https://team.watcha.com" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">회사소개</a></li>
					<li class="css-1w1gghd"><a href="https://watcha.team/81b8ab72-1a44-4d6c-a418-bbaed702c429" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">채용정보</a></li>
				</ul>
				<ul class="css-37p0v">
					<li class="css-thfupn"><span class="css-uw7vnf">왓챠피디아 광고 문의</span> <span class="css-92plnc">ad@watcha.com</span></li>
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