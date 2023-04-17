<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dashboard - SB Admin</title>
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
        <link href="/css/admin/styles.css" rel="stylesheet" />
        <link href="/css/admin/8_admin/hradmin/searchaccount.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        
        
        <!-- 테이블 정렬하는 css임 -->
        <script src="/js/admin/datatables-simple-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->

        <script src="/js/admin/scripts.js"></script>
        <script src="/js/admin/admin_logout.js"></script>
        
        <style>
            a { text-decoration: none; }
            
            .numbering { width:460px; height:40px; margin:20px auto 7px; text-align:center; }
			.numbering span { width:40px; height:40px; display:inline-block; border:1px solid black; box-sizing:border-box; text-align:center; font-size:15; }
			#on { background:#e56e00; color:#fff; }
        </style>
        
        <script>
			$(function() {
				$(".datatable-input").on("keypress", function(key) {
					if ( key.keyCode == 13 ) {
						if ( $("#searchWord").val().length > 0 ) {
							adminSearch.submit();
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
					adminSearch.submit();
				});
			});
		</script>
    </head>
    <body class="sb-nav-fixed">
    
    	<c:if test="${ adminSessionEmail == null }">
	    	<script>alert("관리자계정으로 로그인 후 접속해주세요."); location.href="/admin/whycha_pedia_admin_login";</script>
    	</c:if>
    
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

            <!-- 메인콘텐츠 시작 -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">관리자 계정조회</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                관리자 계정조회
                            </div>
                            <div class="card-body">
                            	<div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                    		<div class="datatable-top">
		                    			<div class="datatable-dropdown">
		                    				<form action="/admin/8_admin/hradmin/admin_search" method="get" name="datatableOption">
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
		                    			<form action="/admin/8_admin/hradmin/admin_search" method="get" name="adminSearch">
			                    			<div class="datatable-search">
			                    				<input type="search" name="searchWord" id="searchWord" class="datatable-input" placeholder="관리자 이름으로 검색" aria-controls="datatablesSimple" style="float:right;">
			                    			</div>
		                    			</form>
		                    			<button type="button" id="searchAll" style="float:right; height:40px; margin-right:20px; border-radius:5px;">전체검색</button>
		                    		</div>
		                    		<div class="datatable-container">
		                    			<table class="datatable-table" id="datatablesSimple">
		                    				<colgroup>
												<col width="10%">
												<col width="20%">
												<col width="20%">
												<col width="15%">
												<col width="20%">
												<col width="15%">
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
		                    								이름
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								아이디
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								관리자유형
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								계정등록일
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								계정만료일
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
		                    					<c:if test="${ result == 1 }">
		                    					<c:forEach items="${ adminMemberList }" var="admin">
		                    					<tr>
		                    						<td>${ admin.id }</td>
		                    						<td>
		                    							<a href="/admin/8_admin/hradmin/admin_detail?id=${ admin.id }">
		                    								${ admin.admin_name }
		                    							</a>
		                    						</td>
		                    						<td>
		                    							<a href="/admin/8_admin/hradmin/admin_detail?id=${ admin.id }">
		                    								${ admin.admin_email }
		                    							</a>
		                    						</td>
		                    						<c:if test="${ admin.admin_position == 1 }">
		                                            <td>SUPER_ADMIN</td>
		                                            </c:if>
		                                            <c:if test="${ admin.admin_position == 2 }">
		                                            <td>CONTENT_ADMIN</td>
		                                            </c:if>
		                                            <c:if test="${ admin.admin_position == 3 }">
		                                            <td>BOARD_ADMIN</td>
		                                            </c:if>
		                                            <c:if test="${ admin.admin_position == 4 }">
		                                            <td>USER_ADMIN</td>
		                                            </c:if>
		                    						<td>${ admin.regi_date }</td>
		                    						<td>${ admin.retire_date }</td>
		                    					</tr>
		                    					</c:forEach>
		                    					</c:if>
		                    					
		                    					<c:if test="${ result == 0 }">
		                    					<tr>
		                    						<td colspan="6">등록된 관리자계정이 없습니다</td>
		                    					</tr>
		                    					</c:if>
		                    				</tbody>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    			</table>
		                    		</div>
		                    		<div>
			                    		<div class="numbering">
											<!-- 처음페이지로 이동하기 -->
											<c:if test="${ now_page > 1 }">
												<a href="/admin/1_notice/notice_list?page=1&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#171;</span></a>
											</c:if>
											<c:if test="${ now_page == 1 }"><span>&#171;</span></c:if>
											
											<!-- 이전페이지로 이동하기 -->
											<c:if test="${ now_page > 1 }">
												<a href="/admin/1_notice/notice_list?page=${ now_page - 1 }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#60;</span></a>
											</c:if>
											<c:if test="${ now_page == 1 }"><span>&#60;</span></c:if>
											
											<!-- 페이지 넘버링 -->
											<c:forEach begin="${ startPage }" end="${ endPage }" step="1" var="num">
												<c:if test="${ now_page == num }">
													<span id="on">${ num }</span>
												</c:if>
												<c:if test="${ now_page != num }">
													<a href="/admin/1_notice/notice_list?page=${ num }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>${ num }</span></a>
												</c:if>
											</c:forEach>
											
											<!-- 다음페이지로 이동하기 -->
											<c:if test="${ now_page < maxPage }">
												<a href="/admin/1_notice/notice_list?page=${ now_page + 1 }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#62;</span></a>
											</c:if>
											<c:if test="${ now_page == maxPage }"><span>&#62;</span></c:if>
											
											<!-- 마지막페이지로 이동하기 -->
											<c:if test="${ now_page < maxPage }">
												<a href="/admin/1_notice/notice_list?page=${ maxPage }&searchWord=${ searchWord }&datatableSelector=${ datatableSelector }"><span>&#187;</span></a>
											</c:if>
											<c:if test="${ now_page == maxPage }"><span>&#187;</span></c:if>
										</div>
		                    		</div>
		                    	</div>
                            </div>
                        </div>
                    </div>
                    <div id="button" style="float:right; margin-right:40px;">
                    	<button type="button" onclick="location.href='/admin/8_admin/hradmin/admin_create'">계정생성하기</button>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
