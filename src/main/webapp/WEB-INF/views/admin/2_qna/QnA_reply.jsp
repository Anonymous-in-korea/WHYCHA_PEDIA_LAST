<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_질의응답_답변달기</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/2_qna/QnA_Reply.css" rel="stylesheet"/>
		<link href="/css/admin/2_qna/QnA_View.css" rel="stylesheet">
		
		<script src="/js/admin/QnA_Edit.js"></script>
		<script src="/js/admin/admin_logout.js"></script>
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script>
			$(function() {
				$("#reply_input").click(function() {
					
				});
			});
		</script>
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
		                            <div><p class="qna-text">[ 문의 제목 ] : ${ questionListVo.question_title }</p></div>
	                                <div><p class="qna-userid">[ 사용자 ] : ${ questionListVo.user_name }</p></div>
	                                <div><p class="qna-reg-date">[ 문의 날짜 ] : ${ questionListVo.regi_date }</p></div>
	                                <div><p class="qna-atext">[ 문의 내용 ]</p></div>
	                                <div class="QBox" style="width: 100%; height: 230px; padding: 10px 10px;">
	                                	${ questionListVo.question_content }
	                                	<br><br>
	                                	<!-- 첨부파일 -->
		                                <c:if test="${ questionListVo.question_file_url != 0 }">
											<img src="${ questionListVo.question_file_url }" style="height:80%;">
		                                </c:if>

		                                <c:if test="${ questionListVo.question_file_url == 0 }">[ 첨부파일이 없습니다 ]</c:if>
	                                	<!-- 첨부파일 -->
	                                </div>
	                                <div>
	                                	<p class="qna-atext">
	                                		[ 관리자 답변 ] <c:if test="${ questionListVo.processing_statu == 2 }">답변자 : ${ adminSessionName }</c:if>
	                                	</p>
	                                </div>
	                                
	                                <form action="" method="post" name="adminQnA_reply" id="adminQnA_reply">
		                                <div class="QBox" style="width: 100%; height: 230px; padding: 10px 10px;">
				                            <input type="text" name="QnA_reply" id="QnA_reply" style="width: 100%; height: 230px;" class="Qna_answer">
		                                </div>
	                                </form>
	                                
		                            <div class="btn0">
		                                <button class="btn1" id="reply_input">답변등록</button>
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
