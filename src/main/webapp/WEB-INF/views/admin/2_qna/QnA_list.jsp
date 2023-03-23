<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자_질의응답</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/2_qna/QnA.css" rel="stylesheet"/>
		
		<!-- 테이블 정렬하는 css임 -->
		<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		<!-- 테이블 정렬하는 css임 -->
		
		<!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
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
		                <h1 class="mt-4">Q&A</h1>
		                <div class="card mb-4">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        Q&A
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
		                    				<input type="search" title="Search within table" class="datatable-input" placeholder="작성자계정 or 닉네임을 입력하세요."
		                    					aria-controls="datatablesSimple">
		                    			</div>
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
		                    								문의내용
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								작성자
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								문의날짜
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								답변날짜
		                    							</a>
		                    						</th>
		                    						<th data-sortable="true" style="text-align:center;">
		                    							<a href="" class="datatable-sorter">
		                    								답변여부
		                    							</a>
		                    						</th>
		                    					</tr>
		                    				</thead>
		                    				<!-- c:foreach로 반복 돌리기 -->
		                    				<tbody>
		                    					<tr>
		                    						<td>1</td>
		                    						<td>
		                    							<a href="/admin/2_qna/QnA_view">
		                    								서비스가 왜 이렇게 개판이에요? 환불해주세요.
		                    							</a>
		                    						</td>
		                    						<td>내가낸데뭐</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-17</td>
		                    						<td>답변완료</td>
		                    					</tr>
		                    					<tr>
		                    						<td>2</td>
		                    						<td>서비스가 왜 이렇게 개판이에요? 환불해주세요.</td>
		                    						<td>내가낸데뭐</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-17</td>
		                    						<td>답변완료</td>
		                    					</tr>
		                    					<tr>
		                    						<td>3</td>
		                    						<td>서비스가 왜 이렇게 개판이에요? 환불해주세요.</td>
		                    						<td>내가낸데뭐</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-17</td>
		                    						<td>답변완료</td>
		                    					</tr>
		                    					<tr>
		                    						<td>4</td>
		                    						<td>서비스가 왜 이렇게 개판이에요? 환불해주세요.</td>
		                    						<td>내가낸데뭐</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-17</td>
		                    						<td>답변완료</td>
		                    					</tr>
		                    					<tr>
		                    						<td>5</td>
		                    						<td>서비스가 왜 이렇게 개판이에요? 환불해주세요.</td>
		                    						<td>내가낸데뭐</td>
		                    						<td>2023-03-10</td>
		                    						<td>2023-03-17</td>
		                    						<td>답변완료</td>
		                    					</tr>
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