<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<title>Dashboard - SB Admin</title>
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/4_comment/commentSearchDetail.css" rel="stylesheet" />
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
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

			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<h1 class="mt-4">코멘트</h1>
						<div class="row"></div>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i>
								코멘트 조회
							</div>
							<div class="card-body" id ="CommentBox">
								<!-- 틀 안에 내용 입력-->
								<form action="" id="search_comment_frame">
									<div><img id="comment_movie_poster" class="commImg"></div>
									<div id="photoiddetail">
										<!--사용자 이미지 -->
										<span>
											<img class="commImg" id="search_comment_photo"src="https://an2-img.amz.wtchn.net/image/v2/Rdrmg0oO_E_meUg0TbP1sQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UQXdlREV3TUNKZExDSndJam9pTDNZeUwzTjBiM0psTDNWelpYSXZaR3BoZUdJME5IcE5ka3gzT0M5d2NtOW1hV3hsTHpFMk1qazRNamswT1RJME9UUTJNVEEwTXpJaWZRLjNkX0MzQkZEWGxVSWFPdTFQcHdOTWNybGx2NlAyLTlxRWxEdE43RFRyOVE">
										</span>
										<!-- 사용자 아이디 -->
										<span class="commUsername" >박준영 (영화 담다)</span>
										<!-- 인플루언서일 경우 -->
										<span id="influencer">✅</span>
										<!-- 댓글 입력 날짜-->
										<span class="movielikereply" id="commRegDate">19일 전</span>
									</div>
									<div class="commText">올빼미</div>
	
									<!-- 콘텐츠 종류, 개봉년도-->
									<div class="movielikereply">
										<span>영화</span>
										<span>2022</span>
									</div>
									<div id="commentdetail" class="commDetext">
										세자의 죽음이 도래하고 그 과정에서 보이는 장면 연출이 굉장히 파워풀하게 느껴져서 몰입감이 상당히 좋다.
										핸디캡을 가진 인물을 하나 투입하므로 해서 역사적인 사건을 더욱 풍성하게 만들고 다양하게 해석할 여지를 확보, 영화적인 상상력이 폭발하게 만들었다. 폭발력을 갖춘 야심찬 상상력 덕분에 끝까지 흥미롭다.
									</div>
									<div class="movielikereply" id="like_reply">
										<div class="commUserIdx">좋아요 386</div>
										<div id="room"></div>
										<div class="commContentIdx">댓글 4</div>
									</div>
		                		</form>
							</div>
	
							<!-- 전체 틀! -->
							<div id="cocomment">
							<!-- 전체 틀! 끝-->

								<!-- 이미지, id, 뱃지, text, 따봉 -->
								<div id="info">
									<img id="abc" src="data:image/jpeg;base64,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" />
									<div id="big_space">
										<div class="small_flex">
											<div id="userid"><strong>대댓글단 사람의 아이디</strong></div>
											<!-- <div><img id="batge" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" /></div> -->
										</div>
										<div id="text">text</div>
										<div style="display:flex">
											<i class="fa-regular fa-thumbs-up"></i>&nbsp;<div class="relikeNum"></div>
										</div>
										<!-- 이미지, id, 뱃지, text, 따봉 끝!-->
									</div>
								</div>
								<!-- 댓글 업데이트 날짜 -->
								<div id="date">11일 전</div>
								<!-- 댓글 업데이트 날짜 끝!-->
							</div>
						</div>
					</div>
					<div id="searchBackBtn">
						<button onclick="history.back()">뒤로가기</button>
					</div>
				</main>
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
