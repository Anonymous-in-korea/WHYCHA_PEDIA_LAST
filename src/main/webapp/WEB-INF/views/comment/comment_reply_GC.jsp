<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와이챠피디아</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/comment_reply.css" rel="stylesheet" type="text/css">
		<link href="/css/contents.css" rel="stylesheet" type="text/css">
		<link href="/css/login.css" rel="stylesheet" type="text/css">
	    <link href="/css/join.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		
		<script src="/js/login.js"></script>
		<script src="/js/join.js"></script>
		<!-- <script src="/js/comment_reply.js"></script> -->
		
		<style>
			.like1{width:14px; height:14px;}
			.like2{width:14px; height:14px;}
		</style>
		
		<script>
			$(function() {
				var result = $("#result").val();
				var user_id = "${sessionId}";
				var comment_id = $("#commentId").val();
				console.log(result);
				console.log(user_id);
				console.log(comment_id);
				
				/* 스포일러 / 신고 */
				$("#comment_opt").click(function() {
					if(result==0){
						$(".login_button").click();
					}else{
						if ( $(".css-4in6y9").css("display") == "none" ) { $(".css-4in6y9").show(); }
						else if ( $(".css-4in6y9").css("display") != "none" ) { $(".css-4in6y9").hide(); }
					}
				});
				
				//스포일러 신고 클릭
				
				/* 댓글 신고 */
				$(".comment_reply_opt").click(function() {
					if(result==0){
						$(".login_button").click();
					}else{ 
						if ( $(this).find(".css-1pfl1eu").css("display") == "none" ) { $(this).find(".css-1pfl1eu").show(); }
						else if ( $(this).find(".css-1pfl1eu").css("display") != "none" ) { $(this).find(".css-1pfl1eu").hide(); }
					}
				});
				
				//댓글신고 클릭
	
				//코멘트 좋아요 버튼 클릭 css변경
				$("#deckLike").click(function(){
					if(result == 0){
						$(".login_button").click();
			        }else{ 
			        	if($("#deckLike").hasClass("css-135c2b4-StylelessButton-StyledActionButton")){
							$("#deckLike").removeClass("css-135c2b4-StylelessButton-StyledActionButton");
							$("#deckLike").addClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
							$("#deckLike .fillTarget").attr("fill","#FEAE27");
							$.ajax({
				   		       	url:"/comment/comment_like",
				   		       	type:"post",
				   		       	dataType:"json",
				   		       	data:{
				   		       		"comment_id":comment_id,
				   		       		"user_id":user_id
				   		       		},
				   		       	success:function(data){
				   		       		alert("성공");
				   		       		$(".css-1n0dvqq").text("좋아요 "+data);
				   		       	},
				   		       	error:function(){
				   		       		alert("실패");
				   		       	}
				   		   });
						}else{ 
							$("#deckLike").addClass("css-135c2b4-StylelessButton-StyledActionButton");
							$("#deckLike").removeClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
							$("#deckLike .fillTarget").attr("fill","#67686a");
							$.ajax({
			   		        	url:"/comment/comment_like_remove",
			   		        	type:"post",
			   		        	dataType:"json",
			   		        	data:{
			   		        		"comment_id":comment_id,
				   		       		"user_id":user_id
			   		        		},
			   		        	success:function(data){
			   		        		alert("성공");
			   		        		$(".css-1n0dvqq").text("좋아요 "+data);
			   		        	},
			   		        	error:function(){
			   		        		alert("실패");
			   		        	}
			   		        }); //ajax
						}//else
			        }//else
				}); //decklike
			    
				//코멘트 reply 좋아요
				$(".css-1d8juai").click(function(){
					var reply_id = $(this).data('id');
					var $button = $(this);
					alert("reply_id : "+reply_id);
					if(result == 0){
						$(".login_button").click();
			        }else{ 
			        	if($(this).hasClass("css-1d8juai")){
			        		$(this).removeClass("css-1d8juai").addClass("css-jpkqok");
			 				$(this).find("img").attr("src","/images/like2.png");
				 			$.ajax({
			   		        	url:"/reply_like",
			   		        	type:"post",
			   		        	dataType:"json",
			   		        	data:{
			   		        		"reply_id":reply_id,
			   		        		"user_id":"${sessionId}",
			   		        		"comment_id":comment_id
			   		        		},
			   		        	success:function(data){
			   		        		alert("성공");
			   		        		$button.find(".like-sum").text(data);
			   		        	},
			   		        	error:function(){
			   		        		alert("실패");
			   		        	}
			   		        }); //ajax
			        	}else{
			        		$(this).removeClass("css-jpkqok").addClass("css-1d8juai");
			 				$(this).find("img").attr("src","/images/like1.png");
				 			$.ajax({
			   		        	url:"/reply_like_remove",
			   		        	type:"post",
			   		        	dataType:"json",
			   		        	data:{
			   		        		"reply_id":reply_id,
			   		        		"user_id":"${sessionId}",
			   		        		"comment_id":comment_id
			   		        		},
			   		        	success:function(data){
			   		        		alert("성공");
			   		        		$button.find(".like-sum").text(data);
			   		        	},
			   		        	error:function(){
			   		        		alert("실패");
				        		}
			   		        });//ajax
						}//else
			    	}//else
				});//function
				

				
				//댓글 쓸때 글자수 올리기 / 3000자 이하
				$(".css-1k5ei58").on("input keyup keydown",function(){
					var maxBytes = 3000; //최대 바이트수
					var str = $(".css-1k5ei58").val();
					var encoder = new TextEncoder(); 
					var textCount = encoder.encode(str).byteLength;
					$(".css-ynpx67").text(textCount+"/3000");
	 				//console.log("byte : "+ textCount);			
					if(textCount > maxBytes){
						$(".css-6qnjre1").text("3000자 이상 글을 적을 수 없습니다.");
						$(".css-1k5ei58").off("input keyup keydown");
					}else{
						$(".css-6qnjre1").text("");
						$(".css-1k5ei58").on("input keyup keydown");
					}
				});
				
				//댓글 x버튼 클릭
				$(".css-1lvet1d-StylelessButton").click(function(){
					$(".css-14gy7wr-reply").hide();
				});
				
				
				
				// 댓글버튼을 눌렀을 때 뜨는 팝업창 -------------------------------------------------------------------------------------------------
				$("#reply").click(function() {
					alert("test");
					if ( result == 0 ) {
						login_button.click();
					} else {
						if ( $(".comment_reply_popUp").css("display") == "none" ) {
							$(".comment_reply_popUp").show();
						}
					}
				});
				
				/* 댓글팝업 창 내리기 */
				$(".comment_reply_popUp").click(function() {
					if ( $(".comment_reply_popUp").css("display") != "none" ) {
						$(".comment_reply_popUp").hide();
					}
				});
				
				/* 창 내리기 방지 */
		    	$(".comment_reply_pop_up_inside").click(function(e) {
					e.stopPropagation();
					$(".comment_reply_popUp").css("display", "block");
				});
				// 댓글버튼을 눌렀을 때 뜨는 팝업창 -------------------------------------------------------------------------------------------------
				
				
				
				//코멘트 reply 저장버튼 댓글달기
				$("#comment_reply_input").click(function(){
					
					alert( $(".css-137vxyg").val() );
					
					if( $(".css-137vxyg").val() == "댓글을 작성해주세요.(1000 글자이내)" || $(".css-137vxyg").val().length < 1 ){
						alert("1자 이상 작성하셔야 등록이 가능합니다. ");
						return false;
					}
					
					$.ajax({
						url:"/replyInsert",
						type:"post",
						dataType:"json",
						data:{
							"comment_id": comment_id,
							"user_id" : user_id,
							"reply_content":$(".css-137vxyg").val()
						},
						success:function(data){
							alert("성공");
							$(".comment_reply_popUp").click();
						},
						error:function(){
							alert("실패");
						}
					});
					
				});
				
	// 			$.ajax({ //reply 수정
	// 				url:"/replyUpdate",
	// 				type:"post",
	// 				dataType:"json",
	// 				data:{
	// 					"reply_id": reply_id,
	// 					"user_id" : user_id,
	// 					"reply_content": $(".css-1k5ei58").val();
	// 				},
	// 				success:function(data){
	// 					alert("성공");
	// 				},
	// 				error:function(data){
	// 					alert("실패");
	// 				}
	// 			});
				
				
				$("#replyUpdate").click(function(){
					
					var reply_id = $(this).parent().parent().parent().parent().siblings(".likeIcon").data('id');
					
					alert("수정");
					$(".css-14gy7wr-reply").show();
					
				});
				
				
				
				//댓글 삭제 -------------------------------------------------------------------------------------------------------------------
				$("#replyDelete").click(function(){
					
					var reply_id = $(this).parent().parent().parent().parent().siblings(".likeIcon").data('id');
					
					if(confirm("댓글을 삭제하시겠습니까?")){
						
						$.ajax({
							url:"/replyDelete",
							type:"post",
							dataType:"json",
							data:{
								"reply_id":reply_id,
								"comment_id": comment_id
							},
							success:function(data){
								alert("성공");
								
							},
							error:function(){
								alert("실패");
							}
						});
						
					}
					
				});
				//댓글 삭제 -------------------------------------------------------------------------------------------------------------------
				
			}); //function
		</script>		
	</head>
	<body>
		<div id="root">
		    <div class="css-5jq76">
		    	
		        <div class="square_div">
			    	<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
					<!-- 댓글 팝업창 시작 --> 
					<%@ include file="reply_pop.jsp" %>
					<!-- 댓글 팝업창 끝 -->
		            <section class="css-18gwkcr">
			            <input type="hidden" name="result" id="result" value="${result}">
	                    <input type="hidden" name="userId" id="userId" value="${commentVo.user_id}">
	                    <input type="hidden" name="commentId" id="commentId" value="${commentVo.id}">
		                <div class="css-leo5si-Self e1rmcw6u0">
		                    <section class="css-funxdv-StyledCommentPageContainer e1rmcw6u1">
		                        <section class="css-tq98he-Self e1r63cvc0">
		                        	<!-- ??? -->
		                            <header title="코멘트" class="css-nyfngm-HeaderBarPrimitive">
		                                <div class="css-19pxr9t">
		                                    <button aria-label="go back"
		                                            class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0" onclick="history.back();"></button>
		                                </div>
		                                <em class="css-5pjt39">코멘트</em>
		                                <div class="css-19pxr9t">
		                                    <button aria-label="more" class="e1bglx4g0 css-1rqhhm-StylelessButton-HeaderCloseButtonSelf-TopRightMoreButton e1k34u8y0"></button>
		                                </div>
		                            </header>
		                            <!-- ??? -->
		                            <div class="css-fr521c-StyledSectionContainer e1rmcw6u2">
		                                <div class="css-1d7xpnn-CommentContainer e1rmcw6u3">
		                                    <section class="css-0">
		                                    	<!-- 댓글이 달린 영화정보 -->
		                                        <div class="css-1p3jp2v">
		                                            <div class="css-1cvf9dk">
		                                            	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/myPage/userPage_SY?user_id=${commentMember.id}" id="user-info">
			                                                <div class="css-1byz60h">
			                                                	<c:if test="${commentMember.user_pic_url !='0'}">
				                                                    <div class="css-1vv1gk7-ProfilePhotoImage" style="background-image:url('${commentMember.user_pic_url}');"></div>
			                                                	</c:if>
			                                                	<c:if test="${commentMember.user_pic_url =='0'}">
				                                                    <div class="css-1vv1gk7-ProfilePhotoImage"></div>
			                                                	</c:if>
			                                                </div>
			                                                <div class="css-1sg2lsz">
			                                                    <div class="css-a7gqjg">${commentMember.user_name}</div>
			                                                    <div class="css-1hy7aba">${commentVo.regi_date}</div>
			                                                </div>
		                                            	</a>
		                                            	<a class="css-1f9m1s4-StylelessLocalLink eovgsd01" id="content-info" href="/ko-KR/contents/m5eJDJZ">
			                                                <div class="css-0">
			                                                    <div class="css-dbu6le">김광석</div>
			                                                    <div class="css-1futg35">영화 · 2016</div>
			                                                </div>
		                                            	</a>
		                                            	<div class="css-1edcxeb">
		                                            		<div class="css-1cxhrll">
		                                            			<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM0QTRBNEEiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyIDE3Ljk4bC02LjAxNSA0LjM5MmMtLjUwOC4zNzItMS4xOTQtLjEyNi0uOTk4LS43MjVsMi4zMTctNy4wODEtNi4wMzUtNC4zNjdjLS41MS0uMzY5LS4yNDctMS4xNzUuMzgyLTEuMTc0bDcuNDQ3LjAxNiAyLjI4Ni03LjA5MWMuMTkyLS42IDEuMDQtLjYgMS4yMzMgMGwyLjI4NiA3LjA5IDcuNDQ3LS4wMTVjLjYyOS0uMDAxLjg5LjgwNS4zOCAxLjE3NGwtNi4wMzMgNC4zNjcgMi4zMTYgNy4wOGMuMTk2LjYtLjQ5IDEuMDk4LS45OTkuNzI2TDEyIDE3Ljk4eiIvPgo8L3N2Zz4K"
		                                            				width="16px" height="16px" alt="star">
		                                            			<span>&nbsp;${starRateOne.score}</span>
		                                            		</div>
		                                            	</div>
		                                            </div>
		                                            <a class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/contents/m5eJDJZ">
		                                                <div class="css-1dl0k9f-StyledLazyLoadingImage ezcopuc0">
		                                                	<img src="https://an2-img.amz.wtchn.net/image/v2/6Yf62ULB74XlZd0gt7Lm9g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1qZ3dlRFF3TUhFNE1DSmRMQ0p3SWpvaUwzWXhMMjEwY0hsaWRYVmxZbVZ4YUcxb2QzWjVNM1J6SW4wLmRBM2xuTDB0Z2FxdTYtOXNGSzNGcjk5SkZWbTJLVzBaNU4tNzNvMkN5UGs"
		                                                        class="css-qhzw1o-StyledImg ezcopuc1">
														</div>
		                                            </a>
												</div>
												<!-- 댓글이 달린 영화정보 -->
												<!-- 댓글 내용 -->
		                                        <div class="css-cb09zq">
		                                            <div class="css-1g78l7j"><span>${commentVo.comment_content}</span></div>
		                                        </div>
		                                        <!-- 댓글 내용 -->
		                                        <!-- 좋아요 수, 댓글 수, 오른쪽 옵션 버튼 -->
		                                        <div class="css-hkgyal">
		                                        	<!-- 좋아요가 하나도 없을 때 -->
		                                            <!-- <div class="css-prw2jl">
		                                            	<span class="css-1n0dvqq">가장 먼저 좋아요를 누르세요</span>
		                                            	<span class="css-0">댓글 0</span>
		                                            </div> -->
		                                            <!-- 좋아요가 하나도 없을 때 -->
		                                            <div class="css-prw2jl">
		                                            	<span class="css-1n0dvqq">좋아요 ${commentVo.like_count}</span>
		                                            	<span class="css-0">댓글 ${replyList.size()}</span>
													</div>
		                                            <div class="css-j985f6" id="comment_opt">
	                                                    <!-- 다른사람이 작성한 글 일때 -->
	                                                    <c:if test="${ sessionId == null || sessionId != commentMember.id}">
			                                                <div class="css-4ygot5">
			                                                    <div class="Icon more css-1b4hoch-SVG e1282e850">
			                                                        <div>
			                                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none"
			                                                                 class="injected-svg" data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
			                                                                 xmlns:xlink="http://www.w3.org/1999/xlink">
			                                                                <path fill-rule="evenodd" clip-rule="evenodd"
			                                                                      d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
			                                                                      fill="#A0A0A0">
																			</path>
			                                                            </svg>
			                                                        </div>
			                                                    </div>
			                                                    <div class="css-4in6y9">
			                                                        <div class="css-ve4kut">
			                                                            <div class="css-19hkid5" id="spo-report">스포일러 신고</div>
			                                                            <div class="css-19hkid5 inap-report">부적절한 표현 신고</div>
			                                                        </div>
			                                                    </div>
			                                                </div>
		                                                </c:if>
	                                                    <!-- 다른사람이 작성한 글 일때 -->
		                                            	<!-- 내가 작성한 글 일때 -->
		                                            	<c:if test="${sessionId == commentMember.id }">
 		                                            		<button class="css-1nfwvb4-StylelessButton">
	 		                                            		<svg class="css-s99igu" viewBox="0 0 18 18"> 
	 		                                            			<g fill-rule="evenodd"> 
	 		                                            				<path d="M2.18 15.39l.703-3.98 3.713 3.712-3.981.702a.374.374 0 0 1-.434-.434zm1.498-4.776l6.364-6.364 3.713 3.712-6.364 6.364-3.713-3.712zM15.607 5.04a.75.75 0 0 1 0 1.06l-1.06 1.061-3.713-3.712 1.06-1.06a.75.75 0 0 1 1.06 0l2.653 2.651z"> -->
			                                            				</path> 
	 	                                            				</g> 
	                                             				</svg>수정 
                                            				</button> 
                                            				<button class="css-1nfwvb4-StylelessButton"> 
                                            					<svg class="css-s99igu" viewBox="0 0 18 18">
                                            						<g fill-rule="evenodd">
	                                           							<path d="M5.25 14.25h7.5v-7.5h1.5V15a.75.75 0 0 1-.75.75h-9a.75.75 0 0 1-.75-.75V6.75h1.5v7.5zM12 4.5h3.75V6H2.25V4.5H6V3a.75.75 0 0 1 .75-.75h4.5A.75.75 0 0 1 12 3v1.5zm-1.5 0v-.75h-3v.75h3zM6.75 6.75h1.5v6.75h-1.5V6.75zm3 0h1.5v6.75h-1.5V6.75z"> -->
	                                           							</path> 
	                                       							</g> 
                                    							</svg>삭제 
                                							</button>
                               							</c:if>
			                                            <!-- 내가 작성한 글 일때 -->
		                                            </div>
		                                        </div>
		                                        <!-- 좋아요 수, 댓글 수, 오른쪽 옵션 버튼 -->
		                                        <!-- 좋아요, 댓글, 공유버튼(트위터, 카카오톡 등) -->
		                                        <section class="css-0">
		                                            <hr class="css-god8tc">
		                                            <div class="css-1gkas1x-Grid e1689zdh0">
		                                                <div class="css-1y901al-Row emmoxnt0">
		                                                    <div class="css-cxqjs3">
		                                                    	<!-- 좋아요 버튼 -->
		                                                    	<c:set var="likedByUser" value="false" />
																<c:forEach items="${likeList}" var="likeList">
																    <c:if test="${likeList.user_id == sessionId}">
																      <c:set var="likedByUser" value="true" />
																    </c:if>
																</c:forEach>
																<c:if test="${likedByUser == true}">
																	<button id="deckLike" class="css-3w1nnz-StylelessButton-StyledActionButton boing">
			                                                            <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
			                                                                <svg viewBox="0 0 20 20" class="css-vkoibk">
			                                                                    <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd"  d="M5.6252 7.9043H3.1252C2.6652 7.9043 2.29187 8.27763 2.29187 8.73763V17.071C2.29187 17.531 2.6652 17.9043 3.1252 17.9043H5.6252C6.08604 17.9043 6.45854 17.531 6.45854 17.071V8.73763C6.45854 8.27763 6.08604 7.9043 5.6252 7.9043Z"
			                                                                          fill="#FEAE27">
	                                                                          	</path>
			                                                                    <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M11.71 4.34525L11.7017 3.99359L11.6825 3.14525L11.6809 3.09692L11.6759 3.04942C11.6684 2.96942 11.6792 2.93442 11.6775 2.93275C11.6917 2.92442 11.7534 2.90442 11.8725 2.90442C12.115 2.90442 13.3225 2.97609 13.3225 4.38692C13.3225 4.93359 13.2775 5.35859 13.1809 5.72692L12.8375 7.03275C12.8034 7.16525 12.9025 7.29442 13.0392 7.29442H14.3892H15.7317C16.0575 7.29442 16.3684 7.43692 16.585 7.68442C16.7975 7.93025 16.9009 8.25609 16.87 8.58275L15.6717 14.7703L15.6634 14.8119L15.6584 14.8536C15.59 15.3961 15.0959 15.8211 14.5334 15.8211H8.54169V8.19942C8.54169 7.89109 8.71169 7.56275 9.04835 7.22359L11.3417 4.90025L11.5775 4.66109C11.71 4.52359 11.71 4.34525 11.71 4.34525ZM17.5275 6.86525C17.0734 6.34275 16.4184 6.04442 15.7317 6.04442H14.3892C14.5167 5.56025 14.5725 5.02942 14.5725 4.38692C14.5725 2.50942 13.1734 1.65442 11.8725 1.65442C11.3825 1.65442 11 1.80775 10.7367 2.11025C10.5667 2.30359 10.3792 2.64442 10.4325 3.17359L10.4517 4.02192L8.15835 6.34525C7.58335 6.92692 7.29169 7.55109 7.29169 8.19942V16.2378C7.29169 16.6978 7.66502 17.0711 8.12502 17.0711H14.5334C15.7342 17.0711 16.7559 16.1603 16.8992 15.0078L18.1067 8.77192C18.1925 8.08109 17.9809 7.38692 17.5275 6.86525Z"
			                                                                          fill="#FEAE27">
	                                                                          	</path>
			                                                                </svg>
			                                                            </div>
			                                                            좋아요
			                                                        </button>
																</c:if>
																<c:if test="${likedByUser == false}">
			                                                        <button id="deckLike" class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
			                                                            <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
			                                                                <svg viewBox="0 0 20 20" class="css-vkoibk">
			                                                                    <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd"  d="M5.6252 7.9043H3.1252C2.6652 7.9043 2.29187 8.27763 2.29187 8.73763V17.071C2.29187 17.531 2.6652 17.9043 3.1252 17.9043H5.6252C6.08604 17.9043 6.45854 17.531 6.45854 17.071V8.73763C6.45854 8.27763 6.08604 7.9043 5.6252 7.9043Z"
			                                                                          fill="#87898B">
	                                                                          	</path>
			                                                                    <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M11.71 4.34525L11.7017 3.99359L11.6825 3.14525L11.6809 3.09692L11.6759 3.04942C11.6684 2.96942 11.6792 2.93442 11.6775 2.93275C11.6917 2.92442 11.7534 2.90442 11.8725 2.90442C12.115 2.90442 13.3225 2.97609 13.3225 4.38692C13.3225 4.93359 13.2775 5.35859 13.1809 5.72692L12.8375 7.03275C12.8034 7.16525 12.9025 7.29442 13.0392 7.29442H14.3892H15.7317C16.0575 7.29442 16.3684 7.43692 16.585 7.68442C16.7975 7.93025 16.9009 8.25609 16.87 8.58275L15.6717 14.7703L15.6634 14.8119L15.6584 14.8536C15.59 15.3961 15.0959 15.8211 14.5334 15.8211H8.54169V8.19942C8.54169 7.89109 8.71169 7.56275 9.04835 7.22359L11.3417 4.90025L11.5775 4.66109C11.71 4.52359 11.71 4.34525 11.71 4.34525ZM17.5275 6.86525C17.0734 6.34275 16.4184 6.04442 15.7317 6.04442H14.3892C14.5167 5.56025 14.5725 5.02942 14.5725 4.38692C14.5725 2.50942 13.1734 1.65442 11.8725 1.65442C11.3825 1.65442 11 1.80775 10.7367 2.11025C10.5667 2.30359 10.3792 2.64442 10.4325 3.17359L10.4517 4.02192L8.15835 6.34525C7.58335 6.92692 7.29169 7.55109 7.29169 8.19942V16.2378C7.29169 16.6978 7.66502 17.0711 8.12502 17.0711H14.5334C15.7342 17.0711 16.7559 16.1603 16.8992 15.0078L18.1067 8.77192C18.1925 8.08109 17.9809 7.38692 17.5275 6.86525Z"
			                                                                          fill="#87898B">
	                                                                          	</path>
			                                                                </svg>
			                                                            </div>
			                                                            좋아요
			                                                        </button>
																</c:if>
		                                                        <!-- 좋아요 버튼 -->
		                                                        <!-- 댓글 버튼 -->
		                                                        <button id="reply" class="css-135c2b4-StylelessButton-StyledActionButton e19d4hrp0">
		                                                            <div class="css-1umclh2-StyledIconContainer e19d4hrp1">
		                                                                <svg viewBox="0 0 20 20" class="css-vkoibk">
		                                                                    <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd" d="M9.99963 2.08325C5.65046 2.08325 2.12546 5.02159 2.12546 8.64575C2.12546 10.5891 3.13962 12.3358 4.74962 13.5374L4.61129 17.2416C4.61129 17.4899 4.81462 17.6591 5.03046 17.6591C5.12129 17.6591 5.21462 17.6291 5.29462 17.5616L8.12462 15.0208C8.72629 15.1433 9.35379 15.2083 9.99963 15.2083C14.3496 15.2083 17.8746 12.2699 17.8746 8.64575C17.8746 5.02159 14.3496 2.08325 9.99963 2.08325ZM9.99962 3.33325C13.653 3.33325 16.6246 5.71659 16.6246 8.64575C16.6246 11.5749 13.653 13.9583 9.99962 13.9583C9.44962 13.9583 8.90296 13.9041 8.37379 13.7966C8.29129 13.7791 8.20796 13.7708 8.12462 13.7708C7.81962 13.7708 7.52046 13.8833 7.28962 14.0908L5.93462 15.3074L5.99879 13.5841C6.01462 13.1733 5.82712 12.7808 5.49796 12.5349C4.14879 11.5291 3.37546 10.1116 3.37546 8.64575C3.37546 5.71659 6.34712 3.33325 9.99962 3.33325Z"
		                                                                          fill="#87898B">
	                                                                         </path>
		                                                                </svg>
		                                                            </div>
		                                                            댓글
		                                                        </button>
		                                                        <!-- 댓글 버튼 -->
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <hr class="css-god8tc">
		                                        </section>
		                                        <!-- 좋아요, 댓글, 공유버튼(트위터, 카카오톡 등) -->
		                                    </section>
		                                    <section class="css-1r5nwql">
		                                        <div class="css-0">
		                                        <c:forEach var="i" begin="0" end="${replyList.size()-1}">
		                                            <div class="css-1m1whp6">
		                                                <div class="css-ov1ktg">
		                                                	<a class="css-255jr8" href="/myPage/userPage_SY?id=${replyuserList[i].id}">
		                                                		<c:if test="${replyuserList[i].user_pic_url != '0' }">
			                                                    	<div class="css-293y94" style="background-image:url('${replyuserList[i].user_pic_url}');"></div><!-- css-bnsanu -->
		                                                		</c:if>
		                                                		<c:if test="${replyuserList[i].user_pic_url == '0' }">
			                                                    	<div class="css-293y94"></div><!-- css-bnsanu -->
		                                                		</c:if>
		                                                	</a>
		                                                    <div class="css-199ku80">
		                                                        <div class="css-1sg2lsz">
		                                                        	<a class="css-255jr8" href="/myPage/userPage_SY?user_id=${replyuserList[i].id}">
		                                                            	<div class="css-72k174">${replyuserList[i].user_name}</div>
		                                                        	</a>
		                                                            <div class="css-maxfbg">${replyList[i].regi_date}</div>
		                                                        </div>
		                                                        <div class="css-yb0jaq">${replyList[i].reply_content}</div>
		                                                        <!-- 좋아요 아이콘 -->
		                                                        <div class="css-ov1ktg">
		                                                            <div class="css-1d8juai likeIcon" data-id="${replyList[i].id}">
		                                                                <div class="Icon like css-1tuvmpc-SVG e1282e850">
		                                                                    <div>
		                                                                        <img class="like1" src="../images/like1.png">
		                                                                    </div>
		                                                                </div>
		                                                                <h4 class="like-sum">${replyList[i].like_count}</h4><!-- 좋아요 수 -->
		                                                            </div>
		                                                            <!-- 부적절한 표현 신고 -->
		                                                            <div class="css-4ygot5 comment_reply_opt">
		                                                                <div class="Icon more css-1b4hoch-SVG e1282e850">
		                                                                    <div>
		                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"
		                                                                             fill="none" class="injected-svg"
		                                                                             data-src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAyMCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS4yNTEgNS40MjY3NkMxMS4yNTEgNi4xMTc1OSAxMC42OTEgNi42NzY3NiAxMC4wMDEgNi42NzY3NkM5LjMxMDE0IDYuNjc2NzYgOC43NTA5OCA2LjExNzU5IDguNzUwOTggNS40MjY3NkM4Ljc1MDk4IDQuNzM2NzYgOS4zMTAxNCA0LjE3Njc2IDEwLjAwMSA0LjE3Njc2QzEwLjY5MSA0LjE3Njc2IDExLjI1MSA0LjczNjc2IDExLjI1MSA1LjQyNjc2Wk0xMC4wMDEgOC43NDk5M0M5LjMxMDE0IDguNzQ5OTMgOC43NTA5OCA5LjMwOTkzIDguNzUwOTggOS45OTk5M0M4Ljc1MDk4IDEwLjY5MDggOS4zMTAxNCAxMS4yNDk5IDEwLjAwMSAxMS4yNDk5QzEwLjY5MSAxMS4yNDk5IDExLjI1MSAxMC42OTA4IDExLjI1MSA5Ljk5OTkzQzExLjI1MSA5LjMwOTkzIDEwLjY5MSA4Ljc0OTkzIDEwLjAwMSA4Ljc0OTkzWk0xMC4wMDEgMTMuMzIzMUM5LjMxMDE0IDEzLjMyMzEgOC43NTA5OCAxMy44ODIzIDguNzUwOTggMTQuNTczMUM4Ljc1MDk4IDE1LjI2MzkgOS4zMTAxNCAxNS44MjMxIDEwLjAwMSAxNS44MjMxQzEwLjY5MSAxNS44MjMxIDExLjI1MSAxNS4yNjM5IDExLjI1MSAxNC41NzMxQzExLjI1MSAxMy44ODIzIDEwLjY5MSAxMy4zMjMxIDEwLjAwMSAxMy4zMjMxWiIgZmlsbD0iI0EwQTBBMCIvPgo8L3N2Zz4K"
		                                                                             xmlns:xlink="http://www.w3.org/1999/xlink">
		                                                                            <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                                  d="M11.251 5.42676C11.251 6.11759 10.691 6.67676 10.001 6.67676C9.31014 6.67676 8.75098 6.11759 8.75098 5.42676C8.75098 4.73676 9.31014 4.17676 10.001 4.17676C10.691 4.17676 11.251 4.73676 11.251 5.42676ZM10.001 8.74993C9.31014 8.74993 8.75098 9.30993 8.75098 9.99993C8.75098 10.6908 9.31014 11.2499 10.001 11.2499C10.691 11.2499 11.251 10.6908 11.251 9.99993C11.251 9.30993 10.691 8.74993 10.001 8.74993ZM10.001 13.3231C9.31014 13.3231 8.75098 13.8823 8.75098 14.5731C8.75098 15.2639 9.31014 15.8231 10.001 15.8231C10.691 15.8231 11.251 15.2639 11.251 14.5731C11.251 13.8823 10.691 13.3231 10.001 13.3231Z"
		                                                                                  fill="#A0A0A0">
                                                                                  	</path>
		                                                                        </svg>
		                                                                    </div>
		                                                                </div>
		                                                                <div class="css-1pfl1eu" style="display:none">
		                                                                    <div class="css-6btlr7">
		                                                                    	<!-- 다른사람이 작성한 글일 때 -->
		                                                                    	<c:if test="${sessionId != replyuserList[i].id}">
			                                                                        <div class="css-ve4kut">
			                                                                            <div class="css-19hkid5">부적절한 표현 신고</div>
			                                                                        </div>
		                                                                        </c:if>
		                                                                    	<!-- 다른사람이 작성한 글일 때 -->
		                                                                        <!-- 본인 or 관리자가 볼 때 -->
		                                                                        <c:if test="${sessionId == replyuserList[i].id}">
			                                                                        <div class="css-ve4kut">
			                                                                            <div class="css-19hkid5" id="replyUpdate">댓글 수정</div>
			                                                                            <div class="css-19hkid5" id="replyDelete">댓글 삭제</div>
			                                                                        </div>
		                                                                        </c:if>
		                                                                        <!-- 본인 or 관리자가 볼 때 -->
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </c:forEach>
		                                        </div>
		                                    </section>
		                                </div>
		                            </div>
		                        </section>
		                    </section>
		                    
		                    <!-- footer start -->
							<%@ include file="../head_foot/footer1.jsp" %>
							<!-- footer end -->
							
		                </div>
		            </section>
		        </div>
		    </div>
		</div>
	</body>
</html>