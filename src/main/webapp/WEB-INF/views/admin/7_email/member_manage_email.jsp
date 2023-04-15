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
		
		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
        <script src="/js/admin/scripts.js"></script>
		<script src="/js/admin/admin_logout.js"></script>
		
		<style>
		    a { text-decoration: none; }
		</style>
		
		<script>
			$(function() {
				$("#send_email").click(function() {
			    	alert("입력한 이메일로 발송됩니다.");
			    	//alert($("#userName").val());
			    	
			    	$.ajax({
			    		url:"/sendEmail",
			    		type:"post",
			    		data:{"userEmail":$("#userEmail").val(),"userName":$("#userName").val()},
			    		success:function(data){
			    			alert("입력한 이메일로 인증번호가 \n 발송되었습니다.");
			    			//alert("이메일 인증 비밀번호 : "+data);
			    			$("#userEmail").val("");
			    			$("#userName").val("");
			    			$("#pwCheck").focus();
			    		},
			    		error:function(){
			    			alert("실패");
			    		}
			    	});
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
                        <h1 class="mt-4">알림관리</h1>
                        <div class="row"></div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i><!--이미지-->
                                알림관리
                            </div>
                            <div class="card-body">
                                <div class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
		                    		<div class="datatable-top">
		                    			<div class="datatable-dropdown">
		                    				<label>
		                    					<select class="datatable-selector">
		                    						<option value="5">5</option>
		                    						<option value="10" selected>10</option>
		                    						<option value="15">15</option>
		                    						<option value="20">20</option>
		                    						<option value="25">25</option>
		                    					</select>
		                    				</label>
		                    			</div>
		                    			<div class="datatable-search">
		                    				<button type="button" id="send_email" style="width:100px; height:40px;">메일 발송</button>
		                    				<input type="search" title="Search within table" class="datatable-input" placeholder="계정 or 닉네임을 입력하세요."
		                    					aria-controls="datatablesSimple">
		                    			</div>
		                    		</div>
		                    		<div class="datatable-container">
		                    			<table class="datatable-table" id="datatablesSimple">
		                    				<colgroup>
												<col width="10%">
												<col width="22.5%">
												<col width="22.5%">
												<col width="22.5%">
												<col width="22.5%">
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
		                    								회원등급
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								계정상태
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								회원등록날짜
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
	                    					<c:forEach items="${collectionArtistUser}" var="memberVo">
		                    					<tr>
		                    						<td>${ memberVo.id }</td>
		                    						<td>
		                    							<a href="/admin/6_member/member_detail?id=${ memberVo.id }">
		                    								<input type="checkbox" name="user_name" id="${ memberVo.user_name }" value="${ memberVo.user_name }">
		                    								<label for="${ memberVo.user_name }">${ memberVo.user_name }</label>
		                    							</a>
		                    						</td>
		                    						<c:if test="${ memberVo.user_pic_url != null }">
		                    						<td>VIP회원</td>
		                    						</c:if>
		                    						<c:if test="${ memberVo.user_pic_url == null }">
		                    						<td>정회원</td>
		                    						</c:if>
		                    						<c:if test="${ memberVo.is_block == 1 }">
		                    						<td>정상회원</td>
		                    						</c:if>
		                    						<c:if test="${ memberVo.is_block == 2 }">
		                    						<td>정지회원</td>
		                    						</c:if>
		                    						<td>${ memberVo.regi_date }</td>
		                    					</tr>
	                    					</c:forEach>
		                    				</tbody>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    			</table>
		                    		</div>
		                    		<div class="datatable-bottom">
		                    			<div class="datatable-info">Showing 1 to 7 of 7 entries</div>
		                    		</div>
		                    	</div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
</html>
