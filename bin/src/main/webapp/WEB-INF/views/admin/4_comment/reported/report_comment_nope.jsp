<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/4_comment/reportdetail_comment.css" rel="stylesheet" />
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
        <script src="/js/admin/reportdetail_reply.js"></script>
        <script src="/js/admin/scripts.js"></script>
        
        <script>
        	$(function() {
	        	$("#blindBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#blind").css("display") == "none" ) {
	        			$("#pop_up").show();
	        			$("#blind").show();
	        		}
	        	});
	        	
	        	$("#spoBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#sopiler").css("display") == "none" ) {
	        			$("#pop_up").show();
	        			$("#sopiler").show();
	        		}
	        	});
	        	
	        	$("#noprobBtn").click(function() {
	        		if ( $("#pop_up").css("display") == "none" && $("#no_problem").css("display") == "none" ) {
	        			$("#pop_up").show();
	        			$("#no_problem").show();
	        		}
	        	});
	        	
	        	$(".cancel").click(function() {
	        		if ( $("#pop_up").css("display") != "none" ) {
	        			$("#pop_up").hide();
	        		}
	        	});
        	});
        </script>
	</head>
	<body class="sb-nav-fixed">
		<div id="pop_up" style="display:none;">
			<!-- 모달 블라인드 -->
			<div class="modal-wrap" id="blind" style="display:none;">
				<div class="modal1">
					<div class="head_notice">알림</div>
					<div class="comment">해당 코멘트를 블라인드 처리 하시겠습니까?</div>
					<div class="button-wrap">
						<button id="blind_ok" onclick="blind_result()">확인</button>
						<button class="cancel">취소</button>
					</div>
				</div>
			</div>
			<!-- 모달 스포일러 -->
			<div class="modal-wrap" id="sopiler" style="display:none;">
				<div class="modal1">
					<div class="head_notice">알림</div>
					<div class="comment">
						해당 코멘트에 스포일러 커버를 씌우시겠습니까?
					</div>
					<div class="button-wrap">
						<button class="ok" onclick="spoiler_result()">확인</button>
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
						<button id="noproblem_ok" onclick="noproblem_result()">확인</button>
						<button class="cancel">취소</button>
					</div>
				</div>
			</div>
		</div>
	    <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" style="width:100%;"></a>
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4">신고함</h1>
						<div class="row"></div>
						<div class="card mb-4">
							<div class="card-header">
                                <i class="fas fa-table me-1"></i><!--이미지-->
                                신고함
                            </div>
                            <div class="card-body">
                                <div class = "reported_comment">
                                    <p id="userinformation">
                                        <span id="profilepic">
                                            <img class="profilepic" src="data:image/jpeg;base64,/9j/4QC8RXhpZgAASUkqAAgAAAAGABIBAwABAAAAAQAAABoBBQABAAAAVgAAABsBBQABAAAAXgAAACgBAwABAAAAAgAAABMCAwABAAAAAQAAAGmHBAABAAAAZgAAAAAAAAAvGQEA6AMAAC8ZAQDoAwAABgAAkAcABAAAADAyMTABkQcABAAAAAECAwAAoAcABAAAADAxMDABoAMAAQAAAP//AAACoAQAAQAAAGQAAAADoAQAAQAAAGQAAAAAAAAA/+ICHElDQ19QUk9GSUxFAAEBAAACDGxjbXMCEAAAbW50clJHQiBYWVogB9wAAQAZAAMAKQA5YWNzcEFQUEwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPbWAAEAAAAA0y1sY21zAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKZGVzYwAAAPwAAABeY3BydAAAAVwAAAALd3RwdAAAAWgAAAAUYmtwdAAAAXwAAAAUclhZWgAAAZAAAAAUZ1hZWgAAAaQAAAAUYlhZWgAAAbgAAAAUclRSQwAAAcwAAABAZ1RSQwAAAcwAAABAYlRSQwAAAcwAAABAZGVzYwAAAAAAAAADYzIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdGV4dAAAAABGQgAAWFlaIAAAAAAAAPbWAAEAAAAA0y1YWVogAAAAAAAAAxYAAAMzAAACpFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z2N1cnYAAAAAAAAAGgAAAMsByQNjBZIIawv2ED8VURs0IfEpkDIYO5JGBVF3Xe1rcHoFibGafKxpv33Tw+kw////2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIAAhEBAxEB/8QAGwABAQADAQEBAAAAAAAAAAAAAAUCAwQGAQf/xAAvEAACAgECAwUGBwAAAAAAAAAAAQIDBAUREiExIkFCUVITMmFxgaEUIzRykZLh/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAIB/8QAFhEBAQEAAAAAAAAAAAAAAAAAAAER/9oADAMBAAIRAxEAPwD9WABaQAAAdmPpt18VNtQi+m/Xb5FOnT8epLsKb85czNbiAD0jx6WtnVD+qOa/S6LE3WvZy+HT+BpiIDO2qdFjrsW0l9zA1gAAAAAAAAZVR47oQ9UkjE2436un96A9IlstgAQoAAE/VaVPHVqXag/syMXNTuVeI4NNuzsr4EMqMoADWAAAAAAbcaMpZNfDFyaknyXduaju0majluL8UeRgtgAlQAAJusKTrqaTcU3u/IkF7UpqODZv4tkiCVGUABrAAAAAAM6rJU2xsj70XuYAD0tFquohYvEtzYTNJv3hKh+HtR+RTIUAGM5quuU30it2BI1XIc7vYL3Yc/myeZWWO2yVkusnuYlJAAaAAAAAAAbKaLL5cNUHLzfcvqB3aPHe22fckkVzmwsX8LRwt7zb3k0dJNUGNkeKqcfNNGQMHlunJgoZun2QslZVHig3vsuqJ5SQAGgAABnVVZdPhri5P4dxsxMaWVdwJ7RXOT8kX6qa6IKFcVFIy1qfj6TFbSvlxP0roUowjCKjGKil3JH0EtAAAAAA58jCpyOco7S9UeTOgAQsnTrqN5R/Mh5pc19DjPUk7PwI2RlbUtrFzaXi/wBNlZiOACmLOkRSxZS73N7lAAiqAAAAAAAAAAAAAHm8mKhlWxXRTewAKS//2Q==" alt="기본프로필이미지">
                                        </span>
                                        <span id="username">
                                            피신고자 이름
                                        </span>
                                        <!-- 인플루언서일경우 아래생성 -->
                                        <span id="influencer">
                                            ✅
                                        </span>
                                        <span id="date">
                                            신고일자 : 
                                        </span>
                                    </p>
                                    <p id="users_cautionCnt">
                                        유저의 제제현황
                                    </p>

                                    <div id="comment_main">
                                        <p>문제의 코멘트 내용 자리</p>
                                    </div>
                                </div>

                                <!-- 버튼누를시 생성 -->
                                <div class="report_result" th:if="${report.status} != '대기중'">
                                    <hr>
                                    <p>
                                        <span>처리내용 : </span>
                                        <span class="processResult">문제없음 처리</span>
                                    </p>
                                    <p>
                                        <span>처리일시 : </span>
                                        <span class="processDate">2022-05-26 오후 11:24 </span>
                                    </p>
                                    <p>
                                        <span>관리자 : </span>
                                        <span class="adminId">이재원</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div id="button_box">
							<button type="button" id="blindBtn"> 블라인더 </button>
							<button type="button" id="spoBtn"> 스포일러 </button>
							<button type="button" id="noprobBtn"> 문제없음 </button>
							<button type="button" onclick="location.href='/admin/4_comment/reported/report_page'"> 뒤로가기 </button>
                        </div>
                    </div>
                </main>
	        </div>
	    </div>
    </body>
</html>