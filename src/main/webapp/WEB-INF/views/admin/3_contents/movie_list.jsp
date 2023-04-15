<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_컨텐츠</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet">
		<link href="/css/admin/3_contents/movie/movie.css" rel="stylesheet"/>

		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/admin_logout.js"></script>
		
		<style>
			.numbering { width:460px; height:40px; margin:20px auto 7px; text-align:center; }
			.numbering span { width:40px; height:40px; display:inline-block; border:1px solid black; box-sizing:border-box; text-align:center; font-size:15; }
			#on { background:#e56e00; color:#fff; }
		</style>
		
		<script>
			$(function() {
				$(".datatable-input").on("keypress", function(key) {
					if ( key.keyCode == 13 ) {
						if ( $("#searchWord").val().length > 0 ) {
							movieSearch.submit();
						} else {
							alert("글자를 입력하셔야 검색이 가능합니다");
							$("#searchWord").focus();
							return false;
						}
					}
				});
				
				$(".datatable-selector").on("change", function() {
					datatableOption.submit();
				});
				
				$("#searchAll").click(function() {
					$("#datatableSelector").val("30");
					$("#searchWord").val("");
					datatableOption.submit();
					movieSearch.submit();
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
		                <h1 class="mt-4">영화</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        영화
		                    </div>
		                    <div class="card-body">
		                    	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                    		<div class="datatable-top">
		                    			<div class="datatable-dropdown">
		                    				<form action="/admin/3_contents/movie_list" method="get" name="datatableOption">
			                    				<label>
			                    					<select name="datatableSelector" id="datatableSelector" class="datatable-selector">
			                    						<option value="30" selected>선택</option>
			                    						<option value="5" <c:if test="${fn:contains( datatableSelector, '5' )}">selected</c:if> >5</option>
			                    						<option value="10" <c:if test="${fn:contains( datatableSelector, '10' )}">selected</c:if> >10</option>
			                    						<option value="15" <c:if test="${fn:contains( datatableSelector, '15' )}">selected</c:if> >15</option>
			                    						<option value="20" <c:if test="${fn:contains( datatableSelector, '20' )}">selected</c:if> >20</option>
			                    						<option value="25" <c:if test="${fn:contains( datatableSelector, '25' )}">selected</c:if> >25</option>
			                    					</select>
			                    				</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 게시글 출력갯수 : ${ datatableSelector }개
		                    				</form>
		                    			</div>
		                    			<form action="/admin/3_contents/movie_list" method="get" name="movieSearch">
			                    			<div class="datatable-search">
			                    				<input type="search" name="searchWord" id="searchWord" class="datatable-input" placeholder="영화제목으로 검색" aria-controls="datatablesSimple" style="float:right;">
			                    			</div>
		                    			</form>
		                    			<button type="button" id="searchAll" style="float:right; height:40px; margin-right:20px; border-radius:5px;">전체검색</button>
		                    		</div>
		                    		<div class="datatable-container">
		                    			<table class="datatable-table" id="datatablesSimple">
		                    				<colgroup>
												<col width="10%">
												<col width="40%">
												<col width="10%">
												<col width="15%">
												<col width="15%">
												<col width="10%">
											</colgroup>
		                    				<thead>
		                    					<tr>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								번호
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								영화제목
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								감독
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								개봉일
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								장르
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								제작국가
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
												<c:forEach items="${ adminContentsList }" var="movieList">
		                    					<tr>
		                    						<td>${ movieList.id }</td>
		                    						<td>
		                    							<a href="/admin/3_contents/movie_view?id=${ movieList.id }">${ movieList.movie_kor_title }</a>
		                    						</td>
		                    						<td>
			                    						<c:forEach items="${ adminDirectorName }" var="director">
			                    						<c:if test="${ movieList.id == director.movie_id }">
		                    							${ director.director_name }
			                    						</c:if>
			                    						</c:forEach>
		                    						</td>
		                    						<td>
		                    							${ movieList.movie_release_date }
		                    						</td>
		                    						<td>
		                    							<c:forEach items="${ adminGenreName }" var="genre">
		                    							<c:if test="${ movieList.id == genre.movie_id }">
		                    							${ genre.genre_kor }
		                    							</c:if>
		                    							</c:forEach>
		                    						</td>
		                    						<td>
														<c:forEach items="${ adminCountryName }" var="country">
		                    							<c:if test="${ movieList.id == country.movie_id }">
		                    							${ country.name_kor }
		                    							</c:if>
		                    							</c:forEach>
													</td>
		                    					</tr>
		                    					</c:forEach>
		                    				</tbody>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    			</table>
		                    		</div>
		                    		<div>
			                    		<div class="numbering">
											<!-- 처음페이지로 이동하기 -->
											<c:if test="${ now_page > 1 }">
												<a href="/admin/3_contents/movie_list?page=1&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#171;</span></a>
											</c:if>
											<c:if test="${ now_page == 1 }"><span>&#171;</span></c:if>
											
											<!-- 이전페이지로 이동하기 -->
											<c:if test="${ now_page > 1 }">
												<a href="/admin/3_contents/movie_list?page=${ now_page - 1 }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#60;</span></a>
											</c:if>
											<c:if test="${ now_page == 1 }"><span>&#60;</span></c:if>
											
											<!-- 페이지 넘버링 -->
											<c:forEach begin="${ startPage }" end="${ endPage }" step="1" var="num">
												<c:if test="${ now_page == num }">
													<span id="on">${ num }</span>
												</c:if>
												<c:if test="${ now_page != num }">
													<a href="/admin/3_contents/movie_list?page=${ num }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>${ num }</span></a>
												</c:if>
											</c:forEach>
											
											<!-- 다음페이지로 이동하기 -->
											<c:if test="${ now_page < maxPage }">
												<a href="/admin/3_contents/movie_list?page=${ now_page + 1 }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#62;</span></a>
											</c:if>
											<c:if test="${ now_page == maxPage }"><span>&#62;</span></c:if>
											
											<!-- 마지막페이지로 이동하기 -->
											<c:if test="${ now_page < maxPage }">
												<a href="/admin/3_contents/movie_list?page=${ maxPage }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#187;</span></a>
											</c:if>
											<c:if test="${ now_page == maxPage }"><span>&#187;</span></c:if>
										</div>
		                    		</div>
		                    	</div>
		                    </div>
		                </div>
	                    <div id="MBox">
	                        <button id="btn1" onclick="location.href='/admin/3_contents/movie_write'">영화등록</button>
	                    </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>
