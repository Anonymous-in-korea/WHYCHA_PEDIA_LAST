<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항_작성페이지</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice_Write.css" rel="stylesheet"/>
		
		<script src="/js/admin/admin_logout.js"></script>
		
		<script>
			$(function() {
				$("#btn1").click(function() {
					alert("test");
					let is_regi = 2;
					let admin_id = ${ adminSessionId };
					$("#notice_write").attr("action", "/admin/1_notice/notice_write?is_regi=" + is_regi + "&admin_id=" + admin_id);
					notice_write.submit();
				});
				
				$("#btn2").click(function() {
					alert(${adminSessionId});
					let is_regi = 1;
					let admin_id = ${ adminSessionId };
					$("#notice_write").attr("action", "/admin/1_notice/notice_write?is_regi=" + is_regi + "&admin_id=" + admin_id);
					notice_write.submit();
				});
				
				$("#btn3").click(function() {
					location.href="/admin/1_notice/notice_list";
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
		                <h1 class="mt-4">공지사항_WRITE</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항_WRITE
		                    </div>
		                    <form action="" method="post" name="notice_write" id="notice_write">
								<input type="text" class="fo" name="announcement_title" id="announcement_title" placeholder="제목을 입력하세요." onfocus="this.placeholder=''"
									onblur="this.placeholder='제목을 입력하세요.'">
		                        <div class="centerdiv">
		                            <p>
		                            	<span>내용</span>
		                            </p>
		                            <p>
		                            	<textarea name="announcement_content" id="announcement_content" placeholder="공지할 내용을 입력해 주세요. (3000자 이내)" onfocus="this.placeholder=''"
		                            		onblur="this.placeholder='공지할 내용을 입력해 주세요. (3000자 이내)'"></textarea>
		                            </p>
		                            <p><span>링크</span></p>
		                            <p>
		                            	<input type="text" name="announcement_url" id="announcement_url" placeholder="입력할 이미지의 URL을 입력하세요." onfocus="this.placeholder=''"
		                            		onblur="this.placeholder='입력할 이미지의 URL을 입력하세요.'">
		                            </p>
		                            <p><span>공지사항 중요도</span></p>
		                            <p>
		                            	<input type="radio" name="important_select" id="important_notice" value="important_notice" />
										<label for="important_notice">중요공지</label>
		                            	<input type="radio" name="important_select" id="general_notice" value="general_notice" />
										<label for="general_notice">일반공지</label>
									</p>
		                        </div>
		                    </form>
		                    <div id="btn0">
		                        <button type="button" class="butn" id="btn1">바로등록하기</button>
		                        <button type="button" class="butn" id="btn2">작성하기</button>
		                        <button type="button" class="butn" id="btn3">취소하기</button>
		                    </div>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script defer src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
	</body>
</html>
