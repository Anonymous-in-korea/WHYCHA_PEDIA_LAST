<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_질의응답_답변달기</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/2_qna/QnA_Reply.css" rel="stylesheet"/>
		
		<script src="/js/admin/QnA_Edit.js"></script>
		
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
		                <h1 class="mt-4">Q&A</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        Q&A
		                    </div>
		                    <div class="card-body">
		                        <div>
		                            <div id="QnABox">
		                                <p class="qna-text">문의 내용 : </p>
		                                <p class="qna-userid">사용자 : </p>
		                                <p class="qna-reg-date"><time id="qna-reg-date">문의 날짜 : </time></p>
		                                <p class="qna-file">첨부파일 : </p>
		                                <p class="qna-atext">설명 : </p>
		                                <p class="qna-status">알림 이메일 주소 : </p>
		                            </div>
		                            답변:
		                            <input type="text" id="QBox" style="width: 100%; height: 250px;" class="Qna_answer" name="qnaText"  required >
		                            <div class="btn0">
		                                <button class="btn1" onclick="replyBtn()">답변등록</button>
		                                <button class="btn2" onclick="location.href='/admin/2_qna/QnA_list'">목록으로</button>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>
