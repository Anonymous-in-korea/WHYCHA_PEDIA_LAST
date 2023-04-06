<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_질의응답_상세페이지</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet">
		<link href="/css/admin/2_qna/QnA_View.css" rel="stylesheet">
		
		<script src="/js/admin/QnA_View.js"></script>
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin_logout.js"></script>
	</head>
	<body class="sb-nav-fixed">
		<div id="layoutSidenav">
		    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                	<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
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
		                                <div><p class="qna-text">[ 문의 제목 ] : ${ questionListVo.question_title }</p></div>
		                                <div><p class="qna-userid">[ 사용자 ] : ${ questionListVo.user_name }</p></div>
		                                <div><p class="qna-reg-date">[ 문의 날짜 ] : ${ questionListVo.regi_date }</p></div>
		                                <div><p class="qna-atext">[ 문의 내용 ]</p></div>
		                                <div class="QBox" style="width: 100%; height: 230px; padding: 10px 10px;">
		                                	${ questionListVo.question_content }
		                                	<br>
		                                	<!-- 첨부파일 -->
			                                <c:if test="${ questionListVo.question_file_url != null }">
												<img src="${ questionListVo.question_file_url }" style="height:80%;">
			                                </c:if>

			                                <c:if test="${ questionListVo.question_file_url == null }">첨부파일이 없습니다</c:if>
		                                	<!-- 첨부파일 -->
		                                </div>
		                                <div>
		                                	<p class="qna-atext">
		                                		[ 관리자 답변 ] <c:if test="${ questionListVo.processing_statu == 2 }">답변자 : ${ answerListVo.admin_name }</c:if>
		                                	</p>
		                                </div>
		                                <div class="QBox" style="width: 100%; height: 230px; padding: 10px 10px;">
		                                	<c:if test="${ questionListVo.processing_statu == 1 }"> <!-- 답변이 안달려있으면 -->
		                                		답변하기 버튼을 눌러 답변을 남겨주세요
		                                	</c:if>
		                                	<c:if test="${ questionListVo.processing_statu == 2 }"> <!-- 답변이 달려있으면 -->
		                                		${ answerListVo.answer_content }
		                                	</c:if>
		                                </div>
		                                <div id="btn2" >
		                                	<c:if test="${ questionListVo.processing_statu == 1 }">
		                                    <button class="btn2" onclick="location.href='/admin/2_qna/QnA_reply?id=${ questionListVo.id }'">답변하기</button>
		                                	</c:if>
		                                    <button class="btn2" onclick="location.href='/admin/2_qna/QnA_list'">뒤로가기</button>
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
