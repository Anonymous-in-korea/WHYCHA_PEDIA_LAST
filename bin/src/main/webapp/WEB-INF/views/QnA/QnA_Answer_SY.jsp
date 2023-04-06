<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html dir="ltr" lang="ko">
	<head>
	<meta charset="utf-8">
	<title>문의 답변 – 와이챠피디아  고객센터</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		<link href="/css/QnA_Write_SY.css" rel="stylesheet" type="text/css">
		<link href="/css/QnA_Answer_SY.css" rel="stylesheet" type="text/css">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
		$(function() {
			/* 삼선아이콘 클릭시 하단 메뉴 생성  */
			  $(".dropdown-chevron-icon").click(function() {
				  $(".dropdown-menu").toggle();
				});
		});
		</script>
	<body class="">
			<a class="skip-navigation" tabindex="1" href="#main-content">주 콘텐츠로 건너뛰기</a>
			<header class="header">
				<div class="logo">
					<a title="홈" href="/QnA/QnA_SY"> 
						<img src="/images/no1_WHYCHA_orange_resize2.png" alt="와이챠피디아 고객센터 헬프 센터 홈 페이지">
					</a>
				</div>
				<div class="nav-wrapper">
					<div class="user-info dropdown">
						<button class="dropdown-toggle" aria-haspopup="true">
							<span data-user-name="true">원수영</span> 
							<img src="https://i.ibb.co/TRFJCXr/2020-08-26-1-31-03.png" class="dropdown-chevron-icon" width="15" height="20" focusable="false" viewbox="0 0 12 12" aria-hidden="true">
						</button>
						<div class="dropdown-menu" id="dropdownBtn" role="menu" aria-expanded="false">
							<a role="menuitem" href="/QnA/QnA_Mylist_SY">문의 내역</a> 
							<a role="menuitem" href="/QnA/QnA_Write_SY">문의 등록</a>
						</div>
					</div>
				</div>
			</header>
			<main role="main">
				<div class="container-divider"></div>
				<div class="container">
					<nav class="sub-nav">
						<ol class="breadcrumbs">
							<li title="왓챠피디아 고객센터">
								<a href="/hc/ko">와이챠피디아  고객센터</a>
							</li>
							<li title="문의 내역">문의 내역</li>
						</ol>
					</nav>
					<!-- 문의내용 답변  start -->
							<section class="request-main">
								<ul class="comment-list">
								<!-- comment list 1 start -->
									<li id="request_comment_15987774115481" class="comment">
										<div class="comment-wrapper">
											<div class="comment-info">
												<div class="comment-author">
													<div class="avatar1 comment-avatar"></div>
													<div class="comment-meta">${questionListVo.question_title}</div>
												</div>
												<section class="comment-body">
													<div class="zd-comment" dir="auto">
														<p dir="auto">${questionListVo.question_content}</p>
													</div>
												</section>
											</div>
										</div>
									</li>
									
									<li id="request_comment_15987999404185" class="comment">
										<div class="comment-wrapper">
											<div class="comment-info">	
												<div class="comment-author">
													<div class="avatar comment-avatar"></div>
													<div class="comment-meta">WATCHA</div>
												</div>
												<section class="comment-body">
													<div class="zd-comment" dir="auto">
<%-- 														<c:if test="${answerListVo} != null"> --%>
<%-- 														    ${answerListVo.answer_content} --%>
<%-- 														 </c:if> --%>
<%-- 														 <c:if test="${answerListVo} ==null"> --%>
<!-- 														    처리중입니다. -->
<%-- 														  </c:if> --%>
														  ${answerListVo.answer_content}
													</div>
												</section>
											</div>
										</div>
									</li>
								</ul>
								<div class="request-follow-up"></div>
									<form data-form="" data-form-type="comment" class="comment-form" action="/hc/ko/requests/253965" accept-charset="UTF-8" method="post">
										<input name="utf8" type="hidden" value="✓" autocomplete="off">
										<input type="hidden" name="_method" value="patch" autocomplete="off">
										<div class="comment-container">
											<button type="button" class="comment-show-container ">답변하기</button>
											<div class="comment-fields ">
												<textarea name="request[comment][body]" id="request_comment_body" placeholder="" rows="7" aria-required="true" aria-label="답장 추가"></textarea>
												<div class="comment-attachments">
													<div id="upload-dropzone" class="upload-dropzone">
														<input type="file" multiple="true" id="request-attachments"
																data-fileupload="true" data-dropzone="upload-dropzone"
																data-error="upload-error"
																data-create-url="/hc/ko/request_uploads"
																data-name="request[attachments][]"
																data-pool="request-attachments-pool"
																data-delete-confirm-msg="" aria-describedby="upload-error">
														<span><a>파일 추가</a> 또는 파일을 여기로 드래그</span>
													</div>
													<div id="upload-error" class="notification notification-error notification-inline" style="display: none;">
														<span data-upload-error-message=""></span>
													</div>
													<ul id="request-attachments-pool" class="upload-pool" data-uploads="[]" data-template="upload-template"></ul>
												</div>
											</div>
											<div class="comment-form-controls">
												<span class="request-submit-comment "> 
													<input type="submit" name="commit" value="제출" class="button button-large" disabled="">
												</span>
											</div>
										</div>
									</form>
							</section>
					<!-- 문의내용 답변 end -->
				</div>
			</main>
			<footer style="top: 170px; padding-left: 20px;" class="css-wvwa3p">
				<div class="foo">
					<ul class="css-1wn0ztv">
						<li class="css-1w1gghd">
							<a href="https://watcha.com/legals/play_agreement" class="css-1q0miqa" target="_blank" rel="noopener noreferrer" >
								왓챠 서비스 이용약관
							</a>
						</li>
						<li class="css-1w1gghd">
							<a href="https://watcha.com/legals/agreement" class="css-1q0miqa" target="_blank" rel="noopener noreferrer" >
							왓챠피디아 서비스 이용약관
							</a>
						</li>
						<li class="css-1czlaix">
							<a href="https://watcha.com/legals/privacy" class="css-1q0miqa" target="_blank" rel="noopener noreferrer">
							개인정보 처리 방침
							</a>
						</li>
						<li class="css-1w1gghd">
							<a href="https://team.watcha.com" target="_blank" rel="noreferrer noopener" class="css-1q0miqa">
							회사소개
							</a>
						</li>
						<li class="css-1w1gghd">
							<a href="https://watcha.team/81b8ab72-1a44-4d6c-a418-bbaed702c429" class="css-1q0miqa"target="_blank" rel="noreferrer noopener" >
							채용정보
							</a>
						</li>
					</ul>
					<ul class="css-37p0v">
						<li class="css-thfupn">
							<span class="css-uw7vnf">왓챠피디아 광고문의</span>
							<span class="css-92plnc">ad@watcha.com</span>
						</li>
						<li class="css-thfupn">
							<span class="css-uw7vnf">제휴 및 대외 협력</span> 
							<span class="css-92plnc">
								<a href="https://watcha.team/contact" target="_blank" rel="noopener noreferrer" class="css-1q0miqa">https://watcha.team/contact</a>
							</span>
						</li>
					</ul>
				</div>
			</footer>
			<div>
				<div class="gG1SKx_8sRWXWUqBql1Ygd7tnyV_z43E"></div>
			</div>
		</body>
	</html>