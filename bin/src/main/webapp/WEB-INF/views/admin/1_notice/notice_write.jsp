<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_공지사항_작성페이지</title>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/1_notice/Notice_Write.css" rel="stylesheet" />
		
		<!-- 보고 필요없으면 지울거임 -->
		<!-- <script defer src="/js/admin/Notice_Write.js"></script> -->
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
		                <h1 class="mt-4">공지사항_WRITE</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        공지사항_WRITE
		                    </div>
		                    <form action="/admin/1_notice/notice_write" method="post" id="notice_write">
		                        <input type="text" class="fo" name="ntcTitle" id="ntcTitle" placeholder="제목을 입력하세요." onfocus="this.placeholder=''"
		                        	onblur="this.placeholder='제목을 입력하세요.'" >
		                        <div class="centerdiv">
		                            <!-- <p><span>사진</span></p>
		                            <div class="conBox2">
		                                <div id="po">
		                                    <div id="poBox">
		                                        <label for="pobtn">파일 선택 </label>
		                                        당겼을때 출력
		                                        <input type="file" accept=".jpg, .jpeg, .png, .gif" id="pobtn" onchange="readLink(this);"/>
		                                        <div id="poBox2">
		                                            <p class="file">파일 끌어다 추가하기</p>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div> -->
		                            <p><span>내용</span></p>
		                            <p>
		                            	<textarea name="ntcText" id="ntcText" placeholder="공지할 내용을 입력해 주세요. (3000자 이내)"></textarea>
		                            </p>
		                            <!-- <p><span>버튼</span></p>
		                            <p>
		                                <input type="text" name="ntcBtnText" id="ntcBtnText" />
		                                <input id="spoid" type="color" value="#FE3F6F"/>
									</p>
		                            <input type="text" name="ntcBtnColor" id="ntcBtnColor" hidden/> -->
		                            <p><span>링크</span></p>
		                            <p>
		                            	<input type="text" name="url_link" id="ntcBtnLink" placeholder="입력할 이미지의 URL을 입력하세요."
		                            		onfocus="this.placeholder=''" onblur="this.placeholder='입력할 이미지의 URL을 입력하세요.'">
		                            </p>
		                        </div>
		                    </form>
		                    <div id="btn0">
		                        <button type="button" class='butn' id="btn1" onclick="directBtn()">바로등록하기</button>
		                        <button type="button" class='butn' id="btn1" onclick="noticeBtn()">작성하기</button>
		                        <button type="button" class='butn' id="btn2" onclick="location.href='/admin/1_notice/notice_list'">취소하기</button>
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
