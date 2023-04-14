<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
	  <link rel="icon" href="/image/favicon.png">
	  <link href="../css/header.css" rel="stylesheet" type="text/css">
	  <link href="../css/my_taste_HY.css" rel="stylesheet" type="text/css">
	  <link href="../css/contents.css" rel="stylesheet" type="text/css">	
	  <!-- Google Tag Manager -->
	  <meta charset="utf-8">
	  <title>와이챠가 분석한 영's님의 취향보고서</title>
	</head>
	<body>
	  <div id="root">
	    <div class="css-5jq76">
	      <div class="css-1xm32e0">
	      	<!-- header start -->
			<%@ include file="../head_foot/header.jsp" %>
			<!-- header end -->
	        <section class="css-113bxwv">
	          <div class="css-67lr2q">
	            <div class="css-1ei367s"></div>
	            <div class="css-17qazew">
	            <!-- 취향분석 헤더 -->
	              <div class="css-1oqdupz-RoundedCornerBlock-RoundedCornerBlock">
	                <div class="css-5l3zer"></div>
	                <header class="css-etjqct">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <div class="css-1d7gqmp">
	                      	<span class="css-1cubea9">
	                        </span>
	                      </div>
	                      <h1 class="css-1bmxwx8">
	                      <span class="css-1haseg">취향분석</span>
	                        <div class="css-1yyol1o">
	                          <div class="css-170kft5">
	                            <div style="background: url(${memberVo.user_pic_url}) center center / cover no-repeat; " class="css-fom973-ProfilePhotoImage"></div>
	                          </div>
	                          <!-- 누구의 취향분석 -->
	                          <div class="css-mp2a8y">${memberVo.user_name}</div>
	                        </div>
	                      </h1>
	                    </div>
	                  </div>
	                </header>
	              </div>
	              <!-- 취향분석 헤더 -->
	              <!-- 평가수 & 별점 분포 그래프 -->
	              <div class="css-q1hgmq-RoundedCornerBlock-RoundedCornerBlock">
	                <section class="css-e9w2vw">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">별점 분포</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <h3 class="css-d98475">당신의 취향을 별점으로 분석해 드립니다.</h3>
	                      <div class="css-baz663">
	                        <div class="css-g1q7ln">
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==0.5}">
	                          		<span class="css-1n3dn6t" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>	
                          	  </div>
	                          <div class="css-hugi8h">
                          	  <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                         <c:if test="${starRateVo.score==1}">
		                         	<span prefix="1" class="css-111q860-Bar" style="height:${starRateVo.frequencyScale*500}px"></span>
		                         </c:if>
	                          </c:forEach>
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==1.5}">
	                          		<span class="css-1n3dn6t" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==2}">
	                          		<span prefix="2" class="css-r41bl-Bar" style="height:${starRateVo.frequencyScale*500}px"></span>
	                          	</c:if>
	                          </c:forEach>
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==2.5}">
	                          		<span class="css-r1x3ay" style="height:${starRateVo.frequencyScale*500}px"></span>
                          	  	</c:if>
	                          </c:forEach>
                          	  </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==3}">
	                          		<span prefix="3" class="css-z5uyqq-Bar" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==3.5}">
	                          		<span class="css-10zyi34" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>	                          
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==4}">	                          
	                          		<span prefix="4" class="css-1hp04q9-Bar" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>		                          
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==4.5}">	                          	
	                          		<span class="css-15egokh" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>
	                          </div>
	                          <div class="css-hugi8h">
	                          <c:forEach items="${starGraphOfUserList}" var="starRateVo"> 
		                        <c:if test="${starRateVo.score==5}">	 	                          
	                          		<span prefix="5" class="css-fa6pmb-Bar" style="height:${starRateVo.frequencyScale*500}px"></span>
	                            </c:if>
	                          </c:forEach>	                          
	                          </div>
	                        </div>
	                      </div>
	                      <div class="css-1s4ow07">
	                        <ul class="css-1ai3iwk-VisualUl">
	                          <li class="css-poewkh">
	                            <div class="css-1caz78i">${starRateVo.avg_score}</div>
	                            <div class="css-1fak39c">별점 평균</div>
	                          </li>
	                          <li class="css-poewkh">
	                            <div class="css-1caz78i">${starRateVo.total_count}</div>
	                            <div class="css-1fak39c">별점 개수</div>
	                          </li>
	                          <li class="css-poewkh">
	                            <div class="css-1caz78i">${starRateVo.mostFreq}</div>
	                            <div class="css-1fak39c">많이 준 별점</div>
	                          </li>
	                        </ul>
	                      </div>
	                    </div>
	                  </div>
	                </section>
	              </div>
	              <!-- 평가수 & 별점 분포 그래프 -->
	              
	              <div class="css-q1hgmq-RoundedCornerBlock-RoundedCornerBlock">
	              	<!-- 선호배우 탭 -->
	                <section class="css-1f4aos9">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">선호배우</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-usdi1z">
	                    <div class="css-1rbc54i">
	                      <div class="css-174lxc3">
	                        <div class="css-1gkas1x-Grid e1689zdh0">
	                          <div class="css-1y901al-Row emmoxnt0">
	                          	<!-- 배우 -->
	                            <ul class="css-1m9zbc5-VisualUl">
	                              <!-- 배우 1명 -->
	                              <c:forEach items="${actorVoList}" var="actorVo">
		                              <li class="css-wj6fn0">
		                              	<a title="${actorVo.actor_name}" class="css-1aaqvgs-InnerPartOfListWithImage"  href="/person/person_detail_ACTOR_HY?actor_name=${actorVo.actor_name}&id=${actorVo.id}&role=${actorVo.actor_role}">
		                                  <div class="css-cssveg">
		                                    <div class="css-13zlig9">
		                                      <div style="background: url(${actorVo.actor_post_url}) no-repeat center; background-size: contain;" class="css-1q751em-ProfilePhotoImage"></div>
		                                    </div>
		                                  </div>
		                                  <div class="css-zoy7di">
		                                    <div class="css-qkf9j">
		                                      <div class="css-17vuhtq">
		                                        <div class="css-1pfpne2-PersonTitle e72a1w70">
		                                        	<span class="css-1neatfa-PersonName e72a1w71">${actorVo.actor_name}</span>
		                                        	<span class="css-104v25a-PersonDetail e72a1w72">좋아요 ${actorVo.total_like}명 • ${actorVo.search_count}편</span>
		                                        </div>
		                                      </div>
		                                      <div class="css-1evnpxk-StyledSubtitle" href="/contents/contents_SH?movie_id=${actorVo.represent_movie_id}">${actorVo.represent_movie}</div>
		                                    </div>
		                                  </div>
		                                </a>
		                              </li>
	                              </c:forEach>
	                              <!-- 배우 1명 -->
	                            </ul>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                    <div direction="left" class="css-a89h8a"></div>
	                    <div direction="right" class="css-1qgb5vh"></div>
	                    <div class="arrow_button css-38kpup" direction="left">
	                      <div class="css-1hestod"></div>
	                    </div>
	                    <div class="arrow_button css-h5qs9h" direction="right">
	                      <div class="css-vp7uyl">
	                      	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
	                          alt="forward">
	                      </div>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <hr class="css-god8tc">
	                    </div>
	                  </div>
	                </section>
	                <!-- 선호배우 탭 -->
	                <!-- 선호감독 탭 -->
	                <section class="css-1f4aos9">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">선호감독</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-usdi1z">
	                    <div class="css-1rbc54i">
	                      <div class="css-174lxc3">
	                        <div class="css-1gkas1x-Grid e1689zdh0">
	                          <div class="css-1y901al-Row emmoxnt0">
	                          	<!-- 배우 -->
	                            <ul class="css-1m9zbc5-VisualUl">
	                              <!-- 배우 1명 -->
	                              <c:forEach items="${directorVoList}" var="directorVo">
		                              <li class="css-wj6fn0">
		                              	<a title="${directorVo.director_name}" class="css-1aaqvgs-InnerPartOfListWithImage"  href="/person/person_detail_DIRECTOR_HY?director_name=${directorVo.director_name}&id=${directorVo.id}&role=${directorVo.diretor_role}">
		                                  <div class="css-cssveg">
		                                    <div class="css-13zlig9">
		                                      <div style="background: url(${directorVo.director_post_url}) no-repeat center; background-size: contain;" class="css-1q751em-ProfilePhotoImage"></div>
		                                    </div>
		                                  </div>
		                                  <div class="css-zoy7di">
		                                    <div class="css-qkf9j">
		                                      <div class="css-17vuhtq">
		                                        <div class="css-1pfpne2-PersonTitle e72a1w70">
		                                        	<span class="css-1neatfa-PersonName e72a1w71">${directorVo.director_name}</span>
		                                        	<span class="css-104v25a-PersonDetail e72a1w72">좋아요 ${directorVo.total_like}명 • ${directorVo.search_count}편</span>
		                                        </div>
		                                      </div>
		                                      <div class="css-1evnpxk-StyledSubtitle" href="/contents/contents_SH?movie_id=${directorVo.represent_movie_id}">${directorVo.represent_movie}</div>
		                                    </div>
		                                  </div>
		                                </a>
		                              </li>
	                              </c:forEach>
	                              <!-- 배우 1명 -->
	                            </ul>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                    <div direction="left" class="css-a89h8a"></div>
	                    <div direction="right" class="css-1qgb5vh"></div>
	                    <div class="arrow_button css-38kpup" direction="left">
	                      <div class="css-1hestod"></div>
	                    </div>
	                    <div class="arrow_button css-h5qs9h" direction="right">
	                      <div class="css-vp7uyl">
	                      	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K"
	                          alt="forward">
	                      </div>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <hr class="css-god8tc">
	                    </div>
	                  </div>
	                </section>
	                <!-- 선호 감독 탭 -->
	                <!-- 영화 선호국가 -->
	                <section class="css-1f4aos9">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">영화 선호국가</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                     <h3 class="css-klz1dn">당신의 무비나라는 ${bestCountry}!</h3>
	                      <div class="css-fqg8by">
	                        <ul class="css-1ai3iwk-VisualUl">
	                        <c:forEach items="${movieCountryVoList}" var="movieCountryVo">
	                          <li class="css-poewkh">
	                            <div class="css-1caz78i">${movieCountryVo.name_kor}</div>
	                            <div class="css-1fak39c">${movieCountryVo.search_count}편</div>
	                          </li>
	                       </c:forEach> 
	                      </div>
	                      <hr class="css-1iutxjm">
	                    </div>
	                  </div>
	                </section>
	                <!-- 영화 선호국가 -->
	                <!-- 영화 선호 장르 -->
	                <section class="css-1f4aos9">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">영화 선호장르</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <h3 class="css-klz1dn">인생은 역시 한 편의 ${bestGenre}!</h3>
	                      <div class="css-fqg8by">
	                        <ul class="css-1ai3iwk-VisualUl">
	                        <c:forEach items="${movieGenreVoList}" var="movieGenreVo">
	                          <li class="css-poewkh">
	                            <div class="css-1caz78i">${movieGenreVo.genre_kor}</div>
	                            <div class="css-1fak39c">${movieGenreVo.search_count}편</div>
	                          </li>
	                        </c:forEach> 
	                        </ul>
	                      </div>
	                      <hr class="css-1iutxjm">
	                    </div>
	                  </div>
	                </section>
	                <!-- 영화 선호 장르 -->
	                <!-- 영화 감상 시간 -->
	                <section class="css-e9w2vw">
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <header class="css-1ue9xs6">
	                        <h2 class="css-1wtjsst">영화 감상 시간</h2>
	                      </header>
	                    </div>
	                  </div>
	                  <div class="css-1gkas1x-Grid e1689zdh0">
	                    <div class="css-1y901al-Row emmoxnt0">
	                      <h3 class="css-134vx88">${timeWateched.watched_time_min}분</h3>
	                      <h3 class="css-1qf8yzq">총 ${timeWateched.watched_time_hr} 시간 감상 하셨습니다.</h3>
	                    </div>
	                  </div>
	                </section>
	                <!-- 영화 감상 시간 -->
	              </div>
<!-- 	              <div class="css-q1hgmq-RoundedCornerBlock-RoundedCornerBlock"></div> -->
<!-- 	              <div class="css-q1hgmq-RoundedCornerBlock-RoundedCornerBlock"></div> -->
                    <!-- 비슷한 작품 section start -->
                    <c:if test="${sessionId != memberVo.id and sessionId != null}">
                    <div class="css-1po9d5k">
                        <div class="css-uvsgck">
                            <div class="css-1gfvga7-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock-RoundedCornerBlock">
                                <div style="min-height: 1px;">
                                    <section class="w_exposed_cell css-rwltgb" data-rowindex="13">
                                        <div class="css-1gkas1x-Grid e1689zdh0">
                                            <div class="css-1y901al-Row emmoxnt0">
                                                <header class="css-1ue9xs6">
                                                	<h2 class="css-1wtjsst">둘 다 재밌게 본 작품</h2>
                                                </header>
                                            </div>
                                        </div>
                                        <div class="css-1gkas1x-Grid e1689zdh0">
                                            <div class="css-1y901al-Row emmoxnt0">
                                                <ul class="css-27z1qm-VisualUl-ContentGrid e14whxmg0">
                                                <c:forEach items="${highScoreForBothUser}" var="movieVo">
                                                    <li class="css-1hp6p72">
                                                    	<a title="${movieVo.movie_kor_title}" href="/contents/contents_SH?movie_id=${movieVo.id}">
                                                         <div class="css-1qmeemv">
                                                             <div class=" css-unzuzl-StyledLazyLoadingImage ezcopuc0">
                                                                 <img src="${movieVo.movie_post_url}"
                                                                      class="css-qhzw1o-StyledImg ezcopuc1">
                                                             </div>
                                                     <!--         <div class="ottBadge css-5o7sb2"
                                                                  src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png"></div>
                                                             <div class="ottBadge css-oobk33"
                                                                  src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU"></div>
                                                      -->    </div>
                                                         <div class="css-ixy093">
                                                             <div class="css-niy0za">${movieVo.movie_kor_title}</div>
                                                             <div>
                                                                 <div class="css-m9i0qw">평점 ${movieVo.movie_rating}</div>                                                          
                                                             </div>
                                                         </div>
                                                    	</a>
                                                    </li>
                                                 </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </section>
                                    <div class="css-1712rt5"></div>
                                    <div class="css-1e9niz8">
                                        <div class="css-1gkas1x-Grid e1689zdh0">
                                            <div class="css-1y901al-Row emmoxnt0">
                                                <div class="css-1thiwcu-StyledInfinityScroll eu826xw0"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 비슷한 작품 section end -->
                 </c:if>   
	            </div>
	          </div>
	        </section>
	      </div>
	    </div>
	  </div>
	</body>
</html>