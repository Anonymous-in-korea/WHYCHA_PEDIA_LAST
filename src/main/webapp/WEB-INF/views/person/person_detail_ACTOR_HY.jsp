<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
	<head>
	    <link rel="icon" href="/assets/img/favicon.png"/>
	    <link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		<link href="/css/person_detail_HY.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	    <meta charset="utf-8">
	    <link rel="icon" href="/image/favicon.png" />
	    <script defer src="/js/artist_page_young.js"></script>
	    <title id="titleName">와이챠피디아</title>
	    <!-- 필요한 CSS, JS 로드 -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <script>
	    $(function(){
			 /*=====================================인물컬렉션 추가삭제 시작======================================================================  */
$("#perLike").click(function() {
	  var id = $("#actorPersonId").val();
	  if (!${empty sessionId}) {
	    	$(this).toggleClass('collected');
	    	if ($(this).hasClass("collected")) {
	    		$(this).css("background-color", "#ff7f27");
		    	$(this).css("color", "#ffffff");
		    	$(this).css("border-radius","5px");
		    	$(this).html("+🙆‍♂️ Add ARTIST Collection");
			  /*컬렉션 추가 ajax 시작  */
			  $.ajax({
			    url: "/person/insertCollectionActor",
			    type: "POST",
			    dataType: "json",
			    data: {
			      user_id: "${sessionId}",
			      actor_id: id
			    },
			    success: function(data) {
			      //alert("Success: " + data);
			  
			    },
			    error: function() {
			      alert("Failure: ");
			    }
			  }); 
			  /*컬렉션 추가 ajax 끝  */
	    	 
   	  } else {
	    		  
   		 $(this).css("background-color", "");
	    	 $(this).css("color", "#959595");
	    	 $(this).html("+🙆 Add ARTIST Collection");
	    	 
	    	 /*컬렉션 삭제 ajax 시작  */
		      $.ajax({
		        url: "/person/deleteCollectionActor",
		        type: "POST",
		        dataType: "json",
		        data: {
		          user_id: "${sessionId}",
		          actor_id: id
		        },
		        success: function(data) {
		          //alert("Success: " + data);
		         // 
		        },
		        error: function() {
		          alert("Failure: ");
		        }
		      }); 
			  /*컬렉션 삭제 ajax 끝 */
	    	}//if 
	  }//if 세션아이디가 있을때 좋아요 가능하게
	}); //컬렉션 추가 버튼 클릭시
/*==========================================인물컬렉션 추가 삭제 끝========================================================  */
/*=========================================좋아요 추가 삭제 시작==============================================================  */
$("#like").click(function() {
 var id = $("#actorPersonId").val();
/*  var countPresent=$("#like-Count-before").val(); */
/*  $("#like-Count-before").hide(); */
 if (!${empty sessionId}) {
   	$(this).toggleClass('liked');
	    if ($(this).hasClass('liked')) {
	    	  $("#like-Count-before").hide();
		      $('#likeIcon').attr('src', '/images/orange_like_fill.png');
		      $('.css-mr5mym-StyledButtonText').css('color', '#ff7f27');
		      /*좋아요 ajax 시작  */
		      $.ajax({
		        url: "/person/insertActorLike",
		        type: "POST",
		        dataType: "json",
		        data: {
		          user_id: "${sessionId}",
		          actor_id: id,
		        /*   countPresent: parseInt(countPresent) */
		        },
		        success: function(data) {
		          //alert("data: " + data);
		          console.log(data);
		          document.getElementById("like-count-value").innerText = data;
		         // $("#like-count").text(data.directorlikeCount);
		          
		        },
		        error: function() {
		          alert("Failure: ");
		        }
		      }); 
				      /*좋아요 ajax 끝  */
	    } else {
	      $('#likeIcon').attr('src', '/images/orange_like.png');
	      $('.css-mr5mym-StyledButtonText').css('color', '');
	      /*좋아요 삭제 ajax 시작  */
		      $.ajax({
		        url: "/person/deleteActorLike",
		        type: "POST",
		        dataType: "json",
		        data: {
		          user_id: "${sessionId}",
		          actor_id: id
		        },
		        success: function(data) {
		         // alert("Success: " + data);
		          $("#like-Count-before").hide();
		          document.getElementById("like-count-value").innerText = data;
		        },
		        error: function() {
		          alert("Failure: ");
		        }
		      }); 
		  /*좋아요 삭제 ajax 끝 */
   	}//if 
	  }//if 세션아이디가 있을때 좋아요 가능하게
	}); //좋아요 버튼 클릭시
/* ========================================좋아요 추가 삭제 끝============================================================================== */
});//function
		</script>
	    <!--jquery + javascript-->
	</head>
	<body>
		<div id="root">
		    <div class="css-5jq76">
		        <div class="css-1xm32e0">
		            <header class="css-6k8tqb">
		                <div th:replace="fragment/header::header">
							<!-- header start -->
							<%@ include file="../head_foot/header.jsp" %>
							<!-- header end -->
		                </div>
		            </header>
		            <input type="hidden" id="actorPersonId" value="${actorPersonlist.id}">
		            <section class="css-18gwkcr">
		                <section class="css-ohiqjz">
		                    <section class="css-tq98he-Self e1555cob0">
		                        <header id="titleHeader" class="css-1f0cupg-HeaderBarPrimitive">
		                            <div class="css-19pxr9t">
		                                <button aria-label="go back" class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0"></button>
		                            </div>
		                            <em class="css-5pjt39"></em>
		                            <div class="css-19pxr9t"></div>
		                        </header>
		                        <div class="css-13khe4v">
		                            <section class="css-1jbeghx">
		                                <div class="css-1gkas1x-Grid e1689zdh0">
			                                    <div class="css-1kc9ha1">
			                                        <div class="css-5krpk4">
			                                            <div class="css-c2ylax">
			                                                <div class="css-ir3bkd-ProfilePhotoImage" id="personPhoto" 
			                                                style='background: url("${actorPersonlist.actor_post_url}")center center / cover no-repeat'
			                                                >
			                                                </div>
			                                            </div>
			                                        </div>
			                                        <div class="css-n52eyj">
			                                            <h1 id="personName">${actorPersonlist.actor_name}</h1>
			                                            <p><strong>구독하기</strong></p>
			                                            <!-- 인물 컬렉션 등록 start -->
			                                            <!--로그인 전-->
			                                            <c:if test="${ sessionId == null }">
			                                            	<p id="perLike" style="background-color: none; color: #959595;">🙆 Add ARTIST Collection</p>
			                                            </c:if>
			                                            <!--로그인 후-->
			                                            <c:if test="${ sessionId != null }">
			                                           		<!--콜렉션에 없을 때-->
			                                            	<c:if test="${inCollection==0}">
			                                            		<p id="perLike" style="background-color: none; color: #959595;">🙆 Add ARTIST Collection</p>
			                                            	</c:if>
			                                            	<!--콜렉션에 있을 때-->
			                                            	<c:if test="${inCollection!=0}">
			                                            		<p id="perLike" style="background-color: #ff7f27; color: #ffffff; border-radius:5px;" class="collected">🙆 Add ARTIST Collection</p>
			                                            	</c:if>
			                                            </c:if>
			                                            <div></div>
			                                            <p id="perRole">${role}</p>
			                                             <!-- 인물 컬렉션 등록  end -->
			                                        </div>
			                                    </div>
		                                    <hr class="css-god8tc">
											<!-- 좋아요 버튼 시작 -->
											<!--로그인 전-->
											<c:if test="${ sessionId == null }">
			                                    <button id="like" class="css-1ski1qz-StylelessButton-StyledActionButton e150ls9t0">
			                                        <img src="/images/orange_like.png" id="likeIcon">
			                                        <div class="css-1umclh2-StyledIconContainer e150ls9t1"></div>
			                                        <span type="desktop" class="css-mr5mym-StyledButtonText e150ls9t2">좋아요 <span id="like-Count-before">${actorlikeCount }</span><span id="like-count-value"></span>명이 이 인물을 좋아합니다</span>
			                                    </button>
			                                </c:if>
			                                <!--로그인 후-->
			                                <c:if test="${ sessionId != null }">
			                                	<!--좋아요 x-->
			                                	<c:if test="${ like == 0 }">
			                                		<button id="like" class="css-1ski1qz-StylelessButton-StyledActionButton e150ls9t0">
				                                        <img src="/images/orange_like.png" id="likeIcon">
				                                        <div class="css-1umclh2-StyledIconContainer e150ls9t1"></div>
				                                        <span type="desktop" class="css-mr5mym-StyledButtonText e150ls9t2">좋아요 <span id="like-Count-before">${actorlikeCount }</span><span id="like-count-value"></span>명이 이 인물을 좋아합니다</span>
				                                    </button>
			                                	</c:if>
			                                	<!--좋아요 o-->
			                                	<c:if test="${ like != 0 }">
				                                	<button id="like" class="css-1ski1qz-StylelessButton-StyledActionButton e150ls9t0 liked">
				                                        <img src="/images/orange_like_fill.png" id="likeIcon">
				                                        <div class="css-1umclh2-StyledIconContainer e150ls9t1"></div>
				                                        <span type="desktop" class="css-mr5mym-StyledButtonText e150ls9t2" style="color:#ff7f27;">좋아요 <span id="like-Count-before">${actorlikeCount }</span><span id="like-count-value"></span>명이 이 인물을 좋아합니다</span>
				                                    </button>
			                                	</c:if>
			                                </c:if>
			                                <!-- 좋아요 버튼 끝-->    
		                                </div>
		                            </section>
		                            <hr class="css-l71a9o">
		                            <div class="css-1bm6399">
		                                <div class="css-358g0x">
		                                    <div class="css-1e9niz8">
		                                        <!--                     영화                   -->
		                                        <div class="css-6fdzfq" id="tv">
		                                            <h2 id="TvSeason" class="css-1w4x7z">영화</h2>
		                                           	<h3 class="css-1t7kp3h">출연</h3>
		                                            <div id="TvSeason-Actor" class="css-2pyzcd">
		                                                <div class="css-69olr5">
		                                                    <div class="css-358g0x"></div>
		                                                    <div class="css-358g0x"></div>
		                                                    <div class="css-10ggmzf">제목</div>
		                                                    <div class="css-10ggmzf">역할</div>
		                                                    <div class="css-10ggmzf">평가</div>
		                                                    <div class="css-10ggmzf">감상 가능 서비스</div>
		                                                </div>
		                                                <!-- 출연작 불러오기 1개 시작-->
		                                                  <!-- 리스트 반복 시작 -->
				                                           <c:if test="${actorPersonMovieList.size() > 0}">
					                                         <c:forEach var="i" begin="0" end="${actorPersonMovieList.size()-1}" varStatus="status">
				                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/contents/contents_SH?movie_id=${actorPersonMovieList[i].id}" id="tvList">
				                                      
				                                                    <div type="tv_seasons" class="css-1726275">
				                                                        <div class="css-1vjd65c" id="tvdata"><fmt:formatDate value="${actorPersonMovieList[i].movie_release_date}" pattern="yyyy"/></div>
				                                                        <div type="tv_seasons" class="css-1fqhpd6">
				                                                            <div class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
				                                                                <img src="${actorPersonMovieList[i].movie_post_url }"
				                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos">
				                                                            </div>
				                                                        </div>
				                                                        <div class="css-1huturz" id="tvTitle">${actorPersonMovieList[i].movie_kor_title }</div>
				                                                        
				                                                        <div class="css-uideuz" id="tvRole">
		<%-- 		                                                         							<c:forEach var="movieActorRole" items="${actorPersonMovieRolelist}"> --%>
		<%-- 																								<c:if test="${actorPersonMovieList.id[i] == movieActorRole.id}"> --%>
		<%-- 																									<c:out value="${movieActorRole.actor_role}"/> --%>
		<%-- 																								</c:if> --%>
		<%-- 																							</c:forEach> --%>
				                                                        </div>
				                                                        <div class="css-1fk9ffn">
				                                                            <div class="css-bql08h">평균${actorPersonMovieList[i].movie_rating}
				                                                                <svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#787878" class="css-ebm5wj">
				                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
				                                                                    </path>
				                                                                </svg>
				                                                                <span id="tvPoint"></span>
				                                                            </div>
				                                                        </div>
				                                                        <div class="css-13lviui">
					                                                            <div class="isWatcha" id="tvWatcha" >
					                                                                <div src=""></div>
					                                                            </div>
				                                                          	 <div class="isNetflix" id="tvNetflix">
						                                                        <c:forEach var="ott" items="${actorMovieOTTList}">
							                                                        <c:if test="${actorPersonMovieList[i].id == ott.movie_id}">
							                                                                <div src="${ott.logo_url}" class="css-1uf1oz6"
							                                                               		 style="background: url('${ott.logo_url}')center center / cover no-repeat"></div>
						                                                           </c:if>
						                                                        </c:forEach>
						                                                     </div>
				                                                        </div>
				                                                    </div>
				                                                </a>
															  </c:forEach>
															</c:if>
		                                              
		                                                <!-- 출연작 불러오기 1개 끝-->
		                                                
		
		                                                <div class="css-1gh9vn6" id="tvmorebtn">
		                                                  
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="css-358g0x">
		                                    <div class="css-1kk08rn">
		                                        <div id="movieSideBar">
		                                            <a>
		                                                <button class="css-12c6two Movie" id="on" >영화</button>
		                                            </a>
		                                            <a>
		                                                <button class="css-w5t31c" >감독</button>
		                                            </a>
		                                            <a>
		                                                <button class="css-w5t31c" >출연</button>
		                                            </a>
		                                        </div>
		                                        
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </section>
		                </section>
		            </section>
		            <div th:replace="fragment/footer::footer">
		            		<!-- footer start -->
							<%@ include file="../head_foot/footer1.jsp" %>
							<!-- footer end -->
		            </div>
		    	</div>
			</div>
		</div>
	</body>
</html>