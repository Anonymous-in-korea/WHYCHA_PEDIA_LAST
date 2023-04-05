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
		<link href="/css/admin/4_comment/reportdetail_reply.css" rel="stylesheet" />
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
        <script src="/js/admin/reportdetail_reply.js"></script>
        <script src="/js/admin/scripts.js"></script>
        
        <style>
        	.mt-4 { font-weight:700; }
        	
        	.card-header { font-weight: 700; }
        </style>
		
		<script>
        	$(function() {
	        	$("#blindBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#blind").css("display") == "none" ) {
	        			$("#pop_up").css({"display":"flex"});
	        			$("#blind").show();
	        		}
	        		$("#blind_ok").click(function() {
	        			$(".processResult").text("블라인드 처리");
	        			$("#pop_up").hide();
	        		});
	        	});
	        	
	        	$("#noprobBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#no_problem").css("display") == "none" ) {
	        			$("#pop_up").css({"display":"flex"});
	        			$("#no_problem").show();
	        		}
	        		$("#noproblem_ok").click(function() {
	        			$(".processResult").text("문제없음 처리");
	        			$("#pop_up").hide();
	        		});
	        	});
	        	
	        	$("#replyBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#reply_save").css("display") == "none" ) {
	        			$("#pop_up").css({"display":"flex"});
	        			$("#reply_save").show();
	        		}
	        		$(".reply_save").click(function() {
	        			$("#pop_up").hide();
	        			comment_reply.submit();
	        		});
	        	});
	        	
	        	$(".cancel").click(function() {
	        		if ( $("#pop_up").css("display") != "none" ) {
	        			$("#pop_up").hide();
	        			$("#blind").hide();
	        			$("#sopiler").hide();
	        			$("#no_problem").hide();
	        		}
	        	});
        	});
        </script>
	</head>
	<body class="sb-nav-fixed">
		<!-- 팝업 DIV -->
		<div id="pop_up" style="display:none;">
			<!-- 모달 블라인드 -->
			<div class="modal-wrap" id="blind" style="display:none;">
				<div class="modal1">
					<div class="head_notice">알림</div>
					<div class="comment">해당 코멘트를 블라인드 처리 하시겠습니까?</div>
					<div class="button-wrap">
						<button id="blind_ok">확인</button>
						<button class="cancel">취소</button>
					</div>
				</div>
			</div>
			<!-- 모달 문제없음 -->
			<div class="modal-wrap" id="no_problem" style="display:none;">
				<div class="modal1">
					<div class="head_notice">알림</div>
					<div class="comment">해당 댓글을 문제없음 처리 하시겠습니까?</div>
					<div class="button-wrap">
						<button id="noproblem_ok">확인</button>
						<button class="cancel">취소</button>
					</div>
				</div>
			</div>
			<!-- 모달 답변완료 -->
			<div class="modal-wrap" id="reply_save" style="display:none;">
				<div class="modal1">
					<div class="head_notice">알림</div>
					<div class="comment">
						해당 코멘트의 답변을 완료하고 저장하시겠습니까?
					</div>
					<div class="button-wrap">
						<button class="reply_save">확인</button>
						<button class="cancel">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 팝업 DIV -->
		
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>
			<div id="layoutSidenav_content">
				<main id="big_window">
					<div class="container-fluid px-4">
						<h1 class="mt-4">신고함</h1>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i>
								신고함
							</div>
							<form action="" method="post" name="comment_reply">
								<div class="card-body">
									<div class = "reported_comment">
										<p id="userinformation">
											<span id="profilepic">
												<img class="profilepic" src="data:image/jpeg;base64,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" alt="기본프로필이미지">
											</span>
											<span id="username">신고자 이름</span>
											<span id="date">[ 신고일자 : 2023-03-23 ]</span>
										</p>
										<div id="comment_main" style="border:2px solid gray; border-radius:2px; padding-left:5px;">
											<p>[ 신고된 코멘트 작성자 : ${ reportVo.user_name } ]</p>
											<p>[ 신고된 코멘트 내용 ]</p>
											<p style="padding-left:15px;">${ commentVo.comment_content }</p>
										</div>
										<p id="users_cautionCnt" style="border:2px solid gray; border-radius:2px; padding-left:5px;">
											유저의 제제현황 : [ 경고 0회 ], [ 정지 0회 ]
										</p>
									</div>
									<hr>
									<p>
										<span>처리내용 : </span>
										<span class="processResult">문제없음 처리</span>
									</p>
									<p>
										<span>처리일시 : </span>
										<span class="processDate">2022-05-26 오후 11:24</span>
									</p>
									<p>
										<span>관리자 : </span>
										<span class="adminId">이재원</span>
									</p>
								</div>
							</form>
						</div>
					</div>
					<div class="btnBox">
						<button type="button" class="button_box" id="blindBtn"> 블라인더 </button>
						<button type="button" class="button_box" id="noprobBtn"> 문제없음 </button>
						<button type="button" class="button_box" id="replyBtn"> 답변완료하기 </button>
						<button type="button" class="button_box" onclick="location.href='/admin/4_comment/reported/report_page'"> 뒤로가기 </button>
					</div>
				</main>
			</div>
		</div>
	</body>
</html>