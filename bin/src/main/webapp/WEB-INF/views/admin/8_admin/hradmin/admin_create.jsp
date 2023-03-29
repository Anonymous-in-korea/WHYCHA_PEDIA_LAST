<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dashboard - SB Admin</title>
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>

		<link href="/css/admin/styles.css" rel="stylesheet" />  
		<link href="/css/admin/6_member/userpage.css" rel="stylesheet" />      
        <link href="/css/admin/8_admin/hradmin/modifyaccount.css" rel="stylesheet" />
        
        <!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->

        <script src="/js/admin/scripts.js"></script>
        
    </head>
    <body class="sb-nav-fixed">
	    <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>

            <!-- 메인콘텐츠 시작 -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">관리자계정수정</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                관리자계정수정
                            </div>
                            <div class="card-body">
                                <table id="user-table" style="margin:0 auto;">
                                    <thead>
                                        <tr>
                                            <th>관리자 아이디</th>
                                            <td id="user-ssn">
                                            	<input class="content_box_input_text" type="text">
                                        		<button type="button" style="float: left; margin: 5px 5px; height:29px;"> 중복확인 </button>
                                        		<span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            이미 사용중인 아이디가 존재합니다
		                                        </span>
		                                        <span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            영문자로 구성된 아이디를 입력해주세요
		                                        </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호</th>
                                            <td id="user-ssn">
												<input class="content_box_input_text" type="text">
		                                        <span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            정규표현식에 맞는 비밀번호를 입력해주세요
		                                        </span>
											</td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호 확인</th>
                                            <td id="user-ssn">
												<input class="content_box_input_text" type="text">
		                                        <span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            비밀번호가 일치하지 않습니다
		                                        </span>
											</td>
                                        </tr>
                                        <tr>
                                            <th>사원번호</th>
                                            <td id="user-type">
												<input disabled class="content_box_input_text" type="text">
												<button type="button" style="float: left; margin: 5px 5px; height:29px;"> 확인 </button>
												<span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            입력하신 사번은 리스트에 없습니다.
		                                        </span>
		                                        <span class="admin_error_msg4" style="display: none; color: blue; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            사번 확인 완료!
		                                        </span>
		                                        <span class="admin_error_msg4" style="display: none; color: red; float: left; margin: 5px 5px; height: 29px; line-height: 28px;">
		                                            이미 가입한 사번입니다.
		                                        </span>
											</td>
                                        </tr>
                                        <tr>
                                            <th>이름</th>
                                            <td id="user-name">
												<input class="content_box_input_text" type="text">
											</td>
                                        </tr>
                                        <tr>
                                            <th>관리자유형</th>
                                            <td id="user-id">
												<select name="admintype" class="admintypeselect">
		                                            <option value="" selected>관리자 유형선택</option>
		                                            <option value="hradmin">인사관리자</option>
		                                            <option value="admin">일반관리자</option>
												</select>
											</td>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="button">
                    	<button type="button" id="inpurBtn">계정등록하기</button>
                    	<button type="button" onclick="location.href='/admin/8_admin/hradmin/admin_search'">취소하기</button>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>