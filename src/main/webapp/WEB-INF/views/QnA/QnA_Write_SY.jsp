<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
	<head>
	<meta charset="utf-8">
	<title>문의 등록 – 왓챠피디아 고객센터</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<link href="/css/QnA_Write.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="//static.zdassets.com/hc/assets/application-2cf4ebf5037c9419ebc68104b11bc22a.css" media="all" id="stylesheet">
		<link rel="stylesheet" type="text/css" href="//p25.zdassets.com/hc/theming_assets/9911886/900000429146/style.css?digest=14909749676569">
		<link rel="icon" type="image/x-icon" href="//theme.zdassets.com/theme_assets/9911886/822c7d38711c87ef96894066eb2f7f1f4a1b679d.png">
		<link rel="shortcut icon" type="image/x-icon" href="https://theme.zdassets.com/theme_assets/9911886/822c7d38711c87ef96894066eb2f7f1f4a1b679d.ico">
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" focusable="false" viewBox="0 0 16 16" class="icon-menu"><path fill="none" stroke="currentColor" stroke-linecap="round" d="M1.5 3.5h13m-13 4h13m-13 4h13"></path></svg>
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
			<div class="container-divider"></div>
			<div class="container">
				<nav class="sub-nav">
					<ol class="breadcrumbs">
						<li title="왓챠피디아 고객센터"><a href="/hc/ko">왓챠피디아 고객센터</a></li>
						<li title="문의 등록">문의 등록</li>
					</ol>
				</nav>
				<h1>문의 등록 <span class="follow-up-hint"></span></h1>
				<p>
					문의하신 내용은 고객센터에서 확인 후 영업일 기준 1~3일 이내에 답변 드리도록 하겠습니다. <br> 
					* 운영시간: 평일 (월 ~ 금) 10:00 ~ 18:00 <br>
				</p>
				<br>
				<div id="main-content" class="form">
					<form id="new_request" class="request-form" data-form="" data-form-type="request" action="/hc/ko/requests"accept-charset="UTF-8" method="post">
						<input name="utf8" type="hidden" value="✓" autocomplete="off">
						<input type="hidden" name="request[ticket_form_id]" id="request_ticket_form_id" value="11721066251673" autocomplete="off">
						<div class="form-field text  required  request_description">
							<label id="request_description_label" for="request_description">설명</label>
							<textarea name="request[description]" id="request_description" aria-required="true" aria-describedby="request_description_hint" aria-labelledby="request_description_label"></textarea>
							<input type="hidden" name="request[description_mimetype]" id="request_description_mimetype" value="text/plain" style="display: none;" autocomplete="off">
							<p id="request_description_hint">문의 내용을 최대한 자세하게 작성해 주세요. (내용에 욕설이 포함되어 있는 경우 답변이 어려울 수 있는 점 양해 부탁드립니다.)</p>
						</div>
						<div class="form-field string  optional  request_custom_fields_8468740397849">
							<label id="request_custom_fields_8468740397849_label" for="request_custom_fields_8468740397849">
							   답변 등록 시 알림을 받으실 수 있는 이메일 주소를 알려주세요.
							   <span class="optional">(선택 사항)</span>
							</label> 
							<input type="text" name="request[custom_fields][8468740397849]" id="request_custom_fields_8468740397849" aria-required="false" aria-labelledby="request_custom_fields_8468740397849_label">
						</div>
						<script data-conditional-fields="[]"></script>
						<!--첨부파일 등록 섹션 시작 -->
						<div class="form-field">
							<label for="request-attachments"> 첨부 파일<span class="optional">(선택 사항)</span></label>
							<div id="upload-dropzone" class="upload-dropzone">
								<input type="file" multiple="true" id="request-attachments" data-fileupload="true" data-dropzone="upload-dropzone"
									data-error="upload-error" data-create-url="/hc/ko/request_uploads" data-name="request[attachments][]"
									data-pool="request-attachments-pool" data-delete-confirm-msg="" aria-describedby="upload-error"> 
								<span><a>파일추가</a> 또는 파일을 여기로 드래그</span>
							</div>
							<div id="upload-error" class="notification notification-error notification-inline" style="display: none;">
								<span data-upload-error-message=""></span>
							</div>
							<ul id="request-attachments-pool" class="upload-pool" data-template="upload-template"></ul>
						</div>
					    <!--첨부파일 등록 섹션 끝 -->
						<footer>
							<input type="submit" name="commit" value="제출">
						</footer>
					</form>
				</div>
			</div>
		</main>
		<!--footer 시작  -->
		<footer style="top: 170px; padding-left: 20px;" class="css-wvwa3p">
			<div class="foo">
				<ul class="css-1wn0ztv">
					<li class="css-1w1gghd">
						<a href="https://watcha.com/legals/play_agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">왓챠 서비스 이용약관</a>
					</li>
					<li class="css-1w1gghd">
						<a href="https://watcha.com/legals/agreement" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">왓챠피디아 서비스 이용약관</a>
					</li>
					<li class="css-1czlaix">
						<a href="https://watcha.com/legals/privacy" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">개인정보 처리 방침</a>
					</li>
					<li class="css-1w1gghd">
						<a href="https://team.watcha.com" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">회사소개</a>
					</li>
					<li class="css-1w1gghd">
						<a href="https://watcha.team/81b8ab72-1a44-4d6c-a418-bbaed702c429" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">채용정보</a>
					</li>
				</ul>
				<ul class="css-37p0v">
					<li class="css-thfupn"><span class="css-uw7vnf">왓챠피디아 광고 문의</span> <span class="css-92plnc">ad@watcha.com</span></li>
					<li class="css-thfupn">
						<span class="css-uw7vnf">제휴 및 대외협력</span> 
						<span class="css-92plnc">
							<a href="https://watcha.team/contact" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">https://watcha.team/contact</a>
						</span>
					</li>
				</ul>
			</div>
		</footer>
		<!--footer 끝  -->
		<div>
			<div class="gG1SKx_8sRWXWUqBql1Ygd7tnyV_z43E"></div>
		</div>
	</body>
</html>