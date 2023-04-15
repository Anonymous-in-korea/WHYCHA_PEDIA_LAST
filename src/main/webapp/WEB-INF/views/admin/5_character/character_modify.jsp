<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/5_character/character_enroll.css" rel="stylesheet" />
		<link href="/css/admin/5_character/jsuites.css" rel="stylesheet" type="text/css" />
		<link href="/css/admin/5_character/cropper.css" rel="stylesheet" type="text/css" />
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		
        <script src="/js/admin/scripts.js"></script>
		<script src="/js/admin/CharacterModify.js"></script>
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/admin_logout.js"></script>
		
		<script>
			$(function() {
				$("#modifyBtn_director").click(function() {
					if ( $("#director_post_url").val().length < 1 ) { confirm("프로필 URL이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else if ( $("#director_name").val().length < 1 ) { confirm("이름이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else { modify.submit(); }
				});
				
				$("#modifyBtn_actor").click(function() {
					if ( $("#actor_post_url").val().length < 1 ) { confirm("프로필 URL이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else if ( $("#actor_name").val().length < 1 ) { confirm("이름이 입력되지 않았습니다. 등록하시겠습니까?"); }
					else { modify.submit(); }
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
                        <h1 class="mt-4">인물관리_수정페이지</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                인물관리_수정페이지
                            </div>
							<form action="/admin/5_character/character_modify" method="post" name="modify">
								<input type="hidden" method="post" name="id" value="${ artistVo.id }">
	                            <div class="card-body">
									프로필사진(240x240)
	                                <div class="conBox2">
	                                    <div id="po">
	                                        <span style="color: red; font-size: smaller;">
	                                        	*1개의 파일만 등록가능합니다.
	                                        </span>
	                                        <div id="poBox">
	                                        	<c:if test="${ artistVo.director_post_url != null }">
	                                            <img src="${ artistVo.director_post_url }" class="profile">
	                                        	</c:if>
	                                        	<c:if test="${ artistVo.director_post_url == null }">
	                                            <img src="${ artistVo.actor_post_url }" class="profile">
	                                        	</c:if>
	                                        </div>
	                                    </div>
	                                </div>
	                                
	                                <div>
	                                	프로필 URL
	                                	<br>
                                       	<c:if test="${ artistVo.director_post_url != null }">
										<input type="text" name="director_post_url" id="director_post_url" size="100%" value="${ artistVo.director_post_url }">
                                       	</c:if>
                                       	<c:if test="${ artistVo.director_post_url == null }">
										<input type="text" name="actor_post_url" id="actor_post_url" size="100%" value="${ artistVo.actor_post_url }">
                                       	</c:if>
	                                </div>
	
									<div>
										이름
										<br>
                                       	<c:if test="${ artistVo.director_post_url != null }">
										<input type="text" name="director_name" id="director_name" size="50" value="${ artistVo.director_name }">
                                       	</c:if>
                                       	<c:if test="${ artistVo.director_post_url == null }">
										<input type="text" name="actor_name" id="actor_name" size="50" value="${ artistVo.actor_name }">
                                       	</c:if>
									</div>
									<!-- <div>
										바이오그래피
										<br>
	                                    <input type="text" name="bio" id="bio" size="10000">
									</div> -->
								</div>
							</form>
					    </div>
					</div>
					<div class="push">
						<!--감독 알림 -->
						<c:if test="${ artistVo.director_post_url != null }">
							<button id="email_submit" onclick="location.href='/admin/7_email/member_director_email_send?director_id=${artistVo.id}'">알림보내기</button>
						</c:if>
						<!--배우 알림 -->
						<c:if test="${ artistVo.director_post_url == null }">
							<button id="email_submit" onclick="location.href='/admin/7_email/member_actor_email_send?actor_id=${artistVo.id}'">알림보내기</button>
						</c:if>
						<c:if test="${ artistVo.director_post_url != null }">
					    <button id="modifyBtn_director">수정하기</button>
						</c:if>
						<c:if test="${ artistVo.director_post_url == null }">
					    <button id="modifyBtn_actor">수정하기</button>
						</c:if>
						<c:if test="${ artistVo.director_post_url != null }">
					    <button onclick="location.href='/admin/5_character/director_manage'">취소하기</button>
					    </c:if>
					    <c:if test="${ artistVo.director_post_url == null }">
					    <button onclick="location.href='/admin/5_character/actor_manage'">취소하기</button>
					    </c:if>
					</div>
                </main>
            </div>
        </div>
    </body>
</html>
