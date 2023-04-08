<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
	<head>
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com">
	    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	    <link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		<link href="/css/comment_SY.css" rel="stylesheet" type="text/css">
		<link rel="shortcut icon" type="image/x-icon" href="/images/whycha_small_logo1.png">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <script defer src="/js/commentScript.js"></script>
	     <script>
		    $(function() {
		    	/* 좋아요 클릭시 색변하기 */
		   		$(".css-1h18l7j-StylelessButton").click(function() {
	   		        var id = $(this).attr("id");
	   		        alert(id);
	   		        var result = $(this).siblings("#result").val();
	   		        alert(result);
	   		        var $button = $(this);
	   		        if(result != 1){
	   		        	$(".comment_pop_up_background").show();
	   		        }else{
	   		        	if ($(this).hasClass("css-jj4q3s-StylelessButton-UserActionButton")) {
			   		        $(this).removeClass("css-jj4q3s-StylelessButton-UserActionButton");
			   		        $(this).addClass("css-1h18l7j-StylelessButton");
			   		        $.ajax({
			   		        	url:"/comment/comment_like_remove",
			   		        	type:"post",
			   		        	dataType:"json",
			   		        	data:{
			   		        		"user_id":"${sessionId}",
			   		        		"comment_id":id
			   		        		},
			   		        	success:function(data){
			   		        		alert("성공");
			   		        		$(".comment_like").text(data);
			   		        	},
			   		        	error:function(){
			   		        		alert("실패");
			   		        	}
			   		        });
			   		    } else {
			   		        $(this).removeClass("css-1h18l7j-StylelessButton");
			   		        $(this).addClass("css-jj4q3s-StylelessButton-UserActionButton").attr("id",id);
				   		    $.ajax({
				   		       	url:"/comment/comment_like",
				   		       	type:"post",
				   		       	dataType:"json",
				   		       	data:{
				   		       		"user_id":"${sessionId}",
				   		       		"comment_id":id
				   		       		},
				   		       	success:function(data){
				   		       		alert("성공");
				   		       		$(".comment_like").text(data);
				   		       	},
				   		       	error:function(){
				   		       		alert("실패");
				   		       	}
				   		   });
			   		    }
	   		        }
		   		});
		    	
		   		/* 코멘트 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf, .comment_pop_up_background").click(function() {
					if ( $(".comment_pop_up_background").css("display") != "none" ) {
						$(".comment_pop_up_background").hide();
						$("#comment_btn").removeClass("active");
						$("#pen_icon").css({"display":"block"});
						$("#pen_icon_color").css({"display":"none"});
					}
				});
	   		    
		   		/* 코멘트 창에서 회원가입 버튼 클릭 시 */
				$("#comment_join_btn").click(function() {
					$(".join_button").css("z-index", "100");
					$(".join_button").click();
					$(".comment_pop_up_background").css("z-index", "10");
				});

				/* 코멘트 창에서 로그인 버튼 클릭 시 */
				$("#comment_login_btn").click(function() {
					$(".login_button").css("z-index", "100");
					$(".login_button").click();
					$(".comment_pop_up_background").css("z-index", "10");
				});
				
		    	/* 창 내리기 방지 */
		    	$(".comment_content_box").click(function(e) {
					e.stopPropagation();
					$(".comment_pop_up_background").css("display", "block");
				});
		    	/* 코멘트 section end */
		   		});
	    </script>
	</head>
	<body>
		<div id="root">
		    <div class="css-5jq76">
		        <div class="css-1xm32e0">
		        	<div th:replace="fragment/header::header">
		          	<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
		        	<!-- 코멘트 팝업창 시작 --> 
					<div class="comment_pop_up_background" style="display:none;">
						<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
							<div class="css-ikkedy">
								<header title="" class="css-155l1de-HeaderBarPrimitive">
									<div class="css-19pxr9t">
										<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0" id="close_button">
											<strong><img src="/images/close_button.png" style="width:100%; height:100%;"></strong>
										</button>
									</div>
									<div class="css-19pxr9t"></div>
								</header>
								<div class="css-1s8we4x">
									<div class="comment_content_box">
										<div class="css-blhbko">
											<div class="css-1gkas1x-Grid e1689zdh0">
												<div class="css-1y901al-Row emmoxnt0">
													<div class="css-l84u8">
														<img src="/images/comment.svg" class="css-ntv7u">
													</div>
													<div class="css-1q1aaw9">지금 회원가입 혹은 로그인하시고,<br>경험한 감동을 기록해보세요.</div>
												</div>
											</div>
										</div>
										<div class="css-y06mto">
											<div class="css-1gkas1x-Grid e1689zdh0">
												<div class="css-1y901al-Row emmoxnt0">
													<button type="button" id="comment_join_btn" class="css-ayvrdp-StylelessButton">회원가입</button>
													<button type="button" id="comment_login_btn" class="css-1828y09-StylelessButton">로그인</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 코멘트 팝업창 끝 -->
		            </div>
		            <section class="css-18gwkcr">
		                <section class="css-9v5p4g-StyledSectionWithShrinkHeaderBar e1ntr3260">
		                    <header class="css-4g5dyy-HeaderBarPrimitive">
		                        <div class="css-uf1ume">
		                            <div class="css-0">
		                                <button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0" onclick="history.back();"></button>
		                            </div>
		                            <div class="css-0"></div>
		                        </div>
		                        <div class="css-1d4ojes">
		                            <div class="css-1bvesam">코멘트</div>
		                        </div>
		                        <div class="css-10bjf2k">코멘트</div>
		                    </header>
		                    <div class="css-1gkas1x-Grid e1689zdh0">
		                        <div class="css-1y901al-Row emmoxnt0">
		                            <div class="css-tbg13q-CommentLists emaj6q20">
		                                <ul class="css-10n5vg9-VisualUl ep5cwgq0">
		                                <!--ul반복 시작 -->
		                           		<c:forEach var="i" begin="0" end="${commentVolist.size()-1}" varStatus="status">
		                                 <!--ul 코멘트 리스트2 시작 -->
		                                    <div class="css-bawlbm" >
		                                        <div class="css-4obf01">
		                                            <div class="css-1cvf9dk">
		                                            	<a title="${memberVolist[i].user_name}" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/myPage/userPage_SY?user_id=${memberVolist[i].id}">
			                                                <div class="css-107z6xc">
			                                                <c:if test="${memberVolist[i].user_pic_url != '0' }">
			                                                    <div class="css-7n996g-ProfilePhotoImage" style="background-image: url('${memberVolist[i].user_pic_url}');"></div>
															</c:if>
			                                                <c:if test="${memberVolist[i].user_pic_url == '0' }">
			                                                    <div class="css-7n996g-ProfilePhotoImage"></div>
															</c:if>
			                                                </div>
			                                                <div class="css-1agoci2" >${memberVolist[i].user_name}
		                                                		<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo="
	                                                              class="css-amcv0d">
	                                                        	</span>
			                                                </div>
			                                            </a>
			                                         </div>
			                                         <div class="css-yqs4xl">
				                                         <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K" width="16px" height="16px" alt="star">
				                                         <span>${starRatelist[i].score}</span>
			                                         </div>
		                                        </div>
		                                        <div class="css-4tkoly">
		                                        	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="comment_reply_GC?comment_id=${commentVolist[i].id}">
		                                            	<div class="css-1g78l7j" >
		                                            		<span>${commentVolist[i].comment_content}</span>
		                                            	</div>
		                                        	</a>
		                                        	<!-- 스포일러 -->
<%-- 	                                        		<c:if test="${commentVolist[i].is_spoil == 2 }"> --%>
<!-- 														<span class="css-xstsdj">스포일러가 있어요!! -->
<!-- 															<button aria-label="Accept Spoiler" class="css-13mdv8k-StylelessButton">&nbsp;보기</button> -->
<!-- 														</span> -->
<%-- 	                                        		</c:if> --%>
													<!-- 스포일러 -->
		                                        </div>
		                                        <div class="css-1atijos">
		                                        	<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
		                                                  width="18px" height="18px" class="css-64x8kr">
		                                            </span>
		                                            <em class="comment_like">${commentVolist[i].like_count}</em>
		                                            <span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K"
		                                                  width="18px" height="18px" class="css-q0vi8">
		                                            </span>
		                                            <em>${replyCount[i]}</em>
		                                        </div>
			                                        <div class="css-hy68ty" >
			                                            <input type="hidden" name="user_id" id="result" value="${result}">
                                                       	<button type="button" class="css-1h18l7j-StylelessButton" id="${commentVolist[i].id}">좋아요</button>
<%-- 			                                            <button id="${commentVolist[i].id}" class="css-1h18l7j-StylelessButton" onclikc="commentlikeBtn()">좋아요</button> --%>
<%-- 			                                        <c:set var="hasLike" value="false"/> --%>
<%-- 			                                        <c:forEach var="j"  begin="0" end="${likeList.size()-1}"> --%>
<%-- 			                                            <c:if test="${commentVolist[i].id == likeList[j].comment_id}"> --%>
<%-- 			                                            	<c:if test="${likeList[j].user_id == '300' }"> --%>
<%-- 				                                            	<c:set var="hasLike" value="true" /> --%>
<%-- 			                                            	</c:if> --%>
<%-- 			                                            </c:if> --%>
			                                        </div>
<%-- 		                                        </c:forEach> --%>
<%-- 	                                           	<c:if test="${haseLike}"> --%>
<%-- 								                    <button id="${commentVolist[i].id}" class="css-jj4q3s-StylelessButton-UserActionButton">좋아요</button> --%>
<%-- 	                                           	</c:if> --%>
<%-- 	                                           	<c:if test="${!haseLike}"> --%>
<%-- 								                    <button id="${commentVolist[i].id}" class="css-1h18l7j-StylelessButton">좋아요</button> --%>
<%-- 	                                           	</c:if> --%>
		                                    </div>
		                           		</c:forEach>
		                                  <!--   ul 코멘트 리스트2 끝 -->
		                                <!--ul반복 끝 -->
		                                <div id="loading-icon">
		                                    <img src="https://icon-library.com/images/spinner-icon-gif/spinner-icon-gif-28.jpg" height="35" width="35"/>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </section>
		            </section>
		            <div th:replace="fragment/footer::footer">
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>