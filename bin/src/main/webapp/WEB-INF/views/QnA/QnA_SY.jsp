<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	   	 <meta charset="utf-8">
		    <title>와이챠피디아 고객센터</title>
		    <link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		   	<link rel="preconnect" href="https://fonts.googleapis.com">
		   	<link href="/css/QnA_SY.css" rel="stylesheet" type="text/css">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
			<!--style css 빼지 마시오 ! -->
		    <link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	</head>
	<body class="">
	    <a class="skip-navigation" tabindex="1" href="#main-content">주 콘텐츠로 건너뛰기</a>
	    <header class="header">
	        <div class="logo">
	            <a title="홈" href="/">
	                <img src="/images/no1_WHYCHA_orange_resize2.png" alt="왓챠피디아 고객센터 헬프 센터 홈 페이지">
	            </a>
	        </div>
	        <div class="nav-wrapper">
	            <button class="menu-button" aria-controls="user-nav" aria-expanded="false" aria-label="탐색 메뉴 토글"  style="display: none;">
	                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" focusable="false" viewBox="0 0 16 16" class="icon-menu">
	                    <path fill="none" stroke="currentColor" stroke-linecap="round" d="M1.5 3.5h13m-13 4h13m-13 4h13"></path>
	                </svg>
	            </button>
	            <nav class="user-nav" id="user-nav"></nav>
	            <div class="user-info dropdown">
	                <button class="dropdown-toggle" aria-haspopup="true">
	                    <span data-user-name="true">원수영</span>
	                </button>
	            </div>
	        </div>
	    </header>
	    <main role="main">
	        <h1 class="visibility-hidden">왓챠피디아 고객센터</h1>
	        <section id="main-content" class="section hero">
	            <div class="hero-inner">
	                <h2 class="visibility-hidden">검색</h2>
	            </div>
	        </section>
	        <div class="container">
	            <section class="section knowledge-base">
	                <h2 class="visibility-hidden">카테고리</h2>
	                <section class="categories blocks">
	                    <ul class="blocks-list">
	                        <li class="blocks-item">
	                            <a href="/QnA/QnA_Mylist_SY?id=${sessionId}" class="blocks-item-link">
	                                <span class="blocks-item-title">문의 내역</span>
	                                <span class="blocks-item-description"></span>
	                            </a>
	                        </li>
	                        <li class="blocks-item">
	                            <a href="/QnA/QnA_Write_SY?id=${sessionId}" class="blocks-item-link">
	                                <span class="blocks-item-title">문의 등록</span>
	                                <span class="blocks-item-description"></span>
	                            </a>
	                        </li>
	                    </ul>
	                </section>
	                <section class="section home-section activity">
	                </section>
	            </section>
	        </div>
	    </main>
	    <footer style="top: 170px; padding-left: 20px;" class="css-wvwa3p">
	        <div class="foo">
	            <ul class="css-1wn0ztv">
	                <li class="css-1w1gghd"><a href="https://watcha.com/legals/play_agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">와야챠 서비스 이용약관</a></li>
	                <li class="css-1w1gghd"><a href="https://watcha.com/legals/agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">와이챠피디아 서비스 이용약관</a></li>
	                <li class="css-1czlaix"><a href="https://watcha.com/legals/privacy" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">개인정보 처리 방침</a></li>
	                <li class="css-1w1gghd"><a href="https://team.watcha.com" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">회사소개</a></li>
	                <li class="css-1w1gghd"><a href="https://watcha.team/81b8ab72-1a44-4d6c-a418-bbaed702c429" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">채용정보</a></li>
	            </ul>
	            <ul class="css-37p0v">
	                <li class="css-thfupn">
	                    <span class="css-uw7vnf">와이챠피디아 광고 문의</span>
	                    <span class="css-92plnc">ad@watcha.com</span>
	                </li>
	                <li class="css-thfupn">
	                    <span class="css-uw7vnf">제휴 및 대외 협력</span>
	                    <span class="css-92plnc"><a href="https://watcha.team/contact" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">https://watcha.team/contact</a></span>
	                </li>
	            </ul>
	        </div>
	    </footer>
	    <div>
	        <div class="gG1SKx_8sRWXWUqBql1Ygd7tnyV_z43E"></div>
	    </div>
	</body>
</html>