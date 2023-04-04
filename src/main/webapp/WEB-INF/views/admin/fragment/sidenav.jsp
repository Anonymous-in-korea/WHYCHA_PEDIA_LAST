<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div  th:fragment="sidenav" class="sb-sidenav-menu">
	<div class="nav">
		<div class="sb-sidenav-menu-heading">고객관리</div>
		<!-- 고객관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_notice" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			공지사항
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_notice" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
				<a class="nav-link" href="/admin/1_notice/notice_list">공지사항 목록</a>
				<a class="nav-link" href="/admin/1_notice/notice_write">공지사항 작성하기</a>
			</nav>
		</div>

		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_QnA" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			Q&A
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_QnA" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
				<a class="nav-link" href="/admin/2_qna/QnA_list">Q&A 목록</a>
			</nav>
		</div>


		<div class="sb-sidenav-menu-heading">서비스관리</div>
		<!-- 컨텐츠관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_content" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			컨텐츠
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_content" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
				<a class="nav-link" href="/admin/3_contents/movie_list">영화 목록</a>
				<a class="nav-link" href="/admin/3_contents/movie_write">영화 등록하기</a>
			</nav>
		</div>

		<!-- 코멘트관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_comment" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			코멘트(신고함)
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_comment" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
				<a class="nav-link" href="/admin/4_comment/reported/report_page">코멘트 신고접수/처리</a>
				<a class="nav-link" href="/admin/4_comment/reported/report_reply">신고 코멘트 처리페이지</a>
			</nav>
		</div>

		<!-- 인물관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_character" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			인물
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		
		<div class="collapse" id="collapseLayouts_character" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
				<a class="nav-link" href="/admin/5_character/character_manage">감독/배우 관리</a>
				<a class="nav-link" href="/admin/5_character/character_input">감독/배우 등록</a>
				<a class="nav-link" href="/admin/5_character/character_modify">감독/배우 수정</a>
			</nav>
		</div>


		<div class="sb-sidenav-menu-heading">회원관리</div>
		<!-- 회원관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_member" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			회원
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_member" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
			  <a class="nav-link" href="/admin/6_member/member_manage">회원 관리</a>
			</nav>
		</div>


		<div class="sb-sidenav-menu-heading">관리자 계정관리</div>
		<!-- 관리자 계정관리 -->
		<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts_admin" aria-expanded="false"
			aria-controls="collapseLayouts">
			<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
			관리자 계정관리
			<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
		</a>
		<div class="collapse" id="collapseLayouts_admin" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
			<nav class="sb-sidenav-menu-nested nav">
			  <a class="nav-link" href="/admin/8_admin/admin/my_admin_info">나의 관리자 계정정보</a>
			  <a class="nav-link" href="/admin/8_admin/admin/my_admin_modify">나의 관리자 계정수정</a>
			  <hr>
			  <a class="nav-link" href="/admin/8_admin/hradmin/admin_search">관리자 계정조회</a>
			  <a class="nav-link" href="/admin/8_admin/hradmin/admin_create">관리자 계정생성</a>
			  <a class="nav-link" href="/admin/8_admin/hradmin/admin_modify">관리자 계정수정</a>
			</nav>
		</div>
	</div>
</div>
