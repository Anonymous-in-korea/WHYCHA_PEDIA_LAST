<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>Dashboard - SB Admin</title>
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<link href="/css/admin/8_admin/hradmin/createaccount.css" rel="stylesheet" />
		<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		<script src="https://unpkg.com/vue@3"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<script defer src="/js/admin/AdminRegist.js"></script>
	</head>
	<body class="sb-nav-fixed">
	    <!-- topbar.html -->
	    <div th:replace="fragment/topbar :: topbar(${adminIdx}, ${adminType})"></div>
	    <!-- topbar.html 끝 -->
	    <div id="layoutSidenav">
	        <div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
					<%@ include file="../../fragment/sidefooter.jsp" %>
					<%@ include file="../../fragment/sidenav.jsp" %>
				</nav>
			</div>


            <!-- 메인콘텐츠 시작 -->
            <div id="layoutSidenav_content">
                <div id="main_box">
                    <div id="titlediv">
                        <p id="main_title">계정생성</p>
                    </div>
                    <div id="content_box">
                        <div id = "content_side_center_box">
                            <form id = "content_updown_center_box" action="/AdminLoginOk" method="post">
                                <div id = "input_box">
                                    <p>
                                        <span class="content_box_input_label">아이디</span>
                                        <input class="content_box_input_text" name="adminId" id="adminId" type="text" @change="reDupl">
                                        <button type="button" @click="idCorrect"> 중복확인 </button>
                                        <span class="admin_error_msg4" v-if="idDupl" style="color: indianred">
                                            중복된 아이디
                                        </span>
                                        <span class="admin_error_msg4" v-if="noDupl" style="color:cornflowerblue">
                                            사용가능한 아이디
                                        </span>
                                    </p>
                                    <p>
                                        <span class="content_box_input_label">비밀번호</span>
                                        <input class="content_box_input_text" name="adminPw" id="adminPw" type="password" @change="pwLength">
                                    </p>
                                    <p>
                                        <span class="content_box_input_label">비밀번호 확인</span>
                                        <input class="content_box_input_text" name="adminPwRe" id="adminPwRe" type="password" @change="pwEquals">
                                        <span v-if="pwNoText" class="admin_error_msg4" style="color: indianred">
                                            비밀번호가 잃지하지 않습니다.
                                        </span>
                                        <span v-if="pwOkText" class="admin_error_msg4" style="color: cornflowerblue">
                                            비밀번호가 일치합니다.
                                        </span>
                                    </p>
                                    <p>
                                        <span class="content_box_input_label">사원번호</span>
                                        <input class="content_box_input_text" name="adminNumber" id="adminNumber" type="text" @change="reEmplCheck">
                                        <button type="button" @click="employeeCheck"> 확인 </button>
                                        <span class="admin_error_msg4" v-if="employeeNo" style="color: indianred">
                                            입력하신 사번은 리스트에 없습니다.
                                        </span>

                                        <!-- 사번은 2066000 ~ 2066099 로 js에서 배열로 지정했음 (콘솔창에 찍힘) -->
                                        <span class="admin_error_msg4" v-if="employeeOk" style="color:cornflowerblue">
                                            사번 확인 완료!
                                        </span>
                                        <span class="admin_error_msg4" v-if="employeeDupl">
                                            이미 가입한 사번입니다.
                                        </span>

                                    </p>
                                    <p>
                                        <span class="content_box_input_label">이름</span>
                                        <input class="content_box_input_text" name="adminName" id="adminName" type="text">
                                    </p>
                                    <p>
                                        <span class="content_box_input_label">관리자유형</span>
                                        <select name="adminType" id="adminType" class="admintypeselect">
                                            <option disabled selected>관리자유형</option>
                                            <option value="hradmin">인사관리자</option>
                                            <option value="admin">일반관리자</option>
                                        </select>
                                    </p>
                                </div>
                                <div id="button_box">
                                    <p>
                                        <button type="button" @click="registCheck"> 등록하기 </button>
                                        <button type="button" onclick="location.href='/hradmin/searchaccount'"> 취소하기 </button>
                                    </p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/admin/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/assets/demo/chart-area-demo.js"></script>
        <script src="/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/js/admin/datatables-simple-demo.js"></script>
    </body>
</html>
