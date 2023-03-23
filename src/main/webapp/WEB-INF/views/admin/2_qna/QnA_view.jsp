<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_질의응답_상세페이지</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet">
		<link href="/css/admin/2_qna/QnA_View.css" rel="stylesheet">
		
		<script src="/js/admin/QnA_View.js"></script>
		
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
		                                <div><p class="qna-text">문의 내용 : </p></div>
		                                <div><p class="qna-userid">사용자 : </p></div>
		                                <div><p class="qna-reg-date">문의 날짜 : </p></div>
		                                <div><p class="qna-file">첨부파일 : </p></div>
		                                <div><p class="qna-atext">설명 : </p></div>
		                                <div><p class="qna-status">알림 이메일 주소 : </p></div>
		                                &nbsp;&nbsp;&nbsp;답변:
		                                <div id="QBox" style="width: 100%; height: 230px;">
		                                	<c:if> <!-- 답변이 안달려있으면 -->
		                                		답변을 작성해주세요
		                                	</c:if>
		                                	<c:if> <!-- 답변이 달려있으면 -->
		                                		해당 답변 출력
		                                	</c:if>
		                                </div>
		                                <div id="btn2" >
		                                	<c:if> <!-- 답변이 안달려있으면 보이기, 달려있으면 안보이기 -->
		                                    <button class="btn2" onclick="location.href='/admin/2_qna/QnA_reply'">답변하기</button>
		                                	</c:if>
		                                    <button class="btn2" onclick="history.back()">뒤로가기</button>
		                                </div>
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
