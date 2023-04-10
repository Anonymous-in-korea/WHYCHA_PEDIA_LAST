<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	  <link rel="icon" href="/image/favicon.png">
	  <link href="../css/header.css" rel="stylesheet" type="text/css">
	  <link href="../css/my_taste_HY.css" rel="stylesheet" type="text/css">	
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
	                      	<span src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMTgxIiBoZWlnaHQ9IjM1IiB2aWV3Qm94PSIwIDAgMTgxIDM1IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgogIDxwYXRoIGQ9Ik04OC4wMTE4IDE3LjU0NzZIODMuNjY5N1Y3LjM1NDExSDc4LjAzNTNWMzMuMjI5OEg4My42Njk3VjIyLjkzMThIODguMDExOFYzMy4yMjk4SDkzLjY0NjJWNy4zNTQxMUg4OC4wMTE4VjE3LjU0NzZaIiBmaWxsPSJ3aGl0ZSIvPgogIDxwYXRoIGQ9Ik00NS4zNjYgMTIuNzM4M0g0OS45MTQ5VjMzLjIyOThINTUuNTQ5M1YxMi43MzgzSDU5LjgzOTdWNy4zNTQxMUg0NS4zNjZWMTIuNzM4M1oiIGZpbGw9IndoaXRlIi8+CiAgPHBhdGggZD0iTTM0LjA0NTYgNy4zNTQxMUwyOS40OTY3IDMzLjIyOThIMzQuOTc2TDM1LjU5MTIgMjkuMDQ3OUg0MC43ODFMNDEuMzg1OCAzMy4yMjk4SDQ2LjkxNjhMNDIuMzE2MiA3LjM1NDExSDM0LjA0NTZaTTM2LjI4MzggMjQuMzQzMkwzNy44NzA4IDEzLjU3NDdIMzguNTQyOEw0MC4xMDEzIDI0LjM0MzJIMzYuMjgzOFoiIGZpbGw9IndoaXRlIi8+CiAgPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yNC4zNDM5IDBMMjIuNjU3NiAyNC43NTI5TDIyLjIwNDQgMjQuNzc2N0wxOC4xOTM3IDcuMjY0NThIMTMuMjM3OUwxMC4yMzc2IDI1LjQxTDkuNTk0NTQgMjUuNDQzOUw2LjkwODI3IDcuMjY0NThIMEw2LjI4NTAyIDM0LjMyNzZMMTMuMzEwNyAzMy44NTk0TDE1LjU5NjUgMTcuMDYxMUwxNi4yNjY5IDE3LjAyNDNMMTkuMzI3NyAzMy40NTM1TDI2LjA1MiAzMy4wMDIzTDMxLjM5MiAwSDI0LjM0MzlaIiBmaWxsPSJ3aGl0ZSIvPgogIDxwYXRoIGQ9Ik02OC41MjQgNy4wOTI3MUM2My40NTgyIDcuMDkyNzEgNjEuMDI4NyA5Ljg2MzI0IDYxLjAyODcgMTQuMTQ5N1YyNi40MzQxQzYxLjAyODcgMzAuNzIwNiA2My40NTgyIDMzLjQ5MTIgNjguNTI0IDMzLjQ5MTJDNzMuNTg5OCAzMy40OTEyIDc2LjAxOTMgMzAuNzIwNiA3Ni4wMTkzIDI2LjQzNDFWMjEuOTkwOEg3MC4zODQ5VjI2Ljk1NjlDNzAuMzg0OSAyOC4zMTYgNjkuODY4IDI4Ljc4NjUgNjguNTI0IDI4Ljc4NjVDNjcuMTggMjguNzg2NSA2Ni42NjMxIDI4LjMxNiA2Ni42NjMxIDI2Ljk1NjlWMTMuNjI3QzY2LjY2MzEgMTIuMjY3OCA2Ny4xOCAxMS43OTc0IDY4LjUyNCAxMS43OTc0QzY5Ljg2OCAxMS43OTc0IDcwLjM4NDkgMTIuMjY3OCA3MC4zODQ5IDEzLjYyN1YxNi41NTQzSDc2LjAxOTNWMTQuMTQ5N0M3Ni4wMTkzIDkuODYzMjQgNzMuNTg5OCA3LjA5MjcxIDY4LjUyNCA3LjA5MjcxWiIgZmlsbD0id2hpdGUiLz4KICA8cGF0aCBkPSJNOTkuNTM5IDcuMzU0MTFMOTQuOTkwMSAzMy4yMjk4SDEwMC40NjlMMTAxLjA4NSAyOS4wNDc5SDEwNi4yNzRMMTA2Ljg3OSAzMy4yMjk4SDExMi40MUwxMDcuODEgNy4zNTQxMUg5OS41MzlaTTEwMS43NzcgMjQuMzQzMkwxMDMuMzY0IDEzLjU3NDdIMTA0LjAzNkwxMDUuNTk1IDI0LjM0MzJIMTAxLjc3N1oiIGZpbGw9IndoaXRlIi8+CiAgPHBhdGggZD0iTTE1MC42NTYgNy4zNTQxM0gxNDQuOTdWMzMuMjI5OEgxNTAuNjU2QzE1My44NjEgMzMuMjI5OCAxNTUuOTggMzEuOTc1MiAxNTcuMDE0IDI5LjY3NTJDMTU3LjYzNSAyOC4zMTYxIDE1Ny43OSAyNy4wNjE1IDE1Ny43OSAyMC4yNjU4QzE1Ny43OSAxMy41MjI1IDE1Ny42MzUgMTIuMjY3OSAxNTcuMDE0IDEwLjkwODhDMTU1Ljk4IDguNjA4NzEgMTUzLjg2MSA3LjM1NDEzIDE1MC42NTYgNy4zNTQxM1pNMTUzLjg2MSAyOC4yMTE1QzE1My4zNDQgMjkuNDY2MSAxNTIuMjU5IDMwLjE0NTcgMTUwLjM0NiAzMC4xNDU3SDE0OC4zM1YxMC40MzgzSDE1MC4zNDZDMTUyLjI1OSAxMC40MzgzIDE1My4zNDQgMTEuMTE3OSAxNTMuODYxIDEyLjM3MjRDMTU0LjI3NSAxMy4yNjExIDE1NC4zNzggMTQuMDQ1MiAxNTQuMzc4IDIwLjMxODFDMTU0LjM3OCAyNi41Mzg3IDE1NC4yNzUgMjcuMzIyOSAxNTMuODYxIDI4LjIxMTVaIiBmaWxsPSJ3aGl0ZSIvPgogIDxwYXRoIGQ9Ik0xNzYuMjk1IDcuMzU0MTNIMTcxLjE3OEwxNjYuNDIyIDMzLjIyOThIMTY5Ljc4MkwxNzAuNjA5IDI4LjAwMjRIMTc2LjgxMkwxNzcuNjkxIDMzLjIyOThIMTgwLjk5OUwxNzYuMjk1IDcuMzU0MTNaTTE3MS4xMjYgMjUuMDc1MUwxNzMuNjU5IDEwLjA3MjRIMTczLjc2MkwxNzYuMjk1IDI1LjA3NTFIMTcxLjEyNloiIGZpbGw9IndoaXRlIi8+CiAgPHBhdGggZD0iTTE2My45OTMgNy4zNTQxM0gxNjAuNjMzVjMzLjIyOThIMTYzLjk5M1Y3LjM1NDEzWiIgZmlsbD0id2hpdGUiLz4KICA8cGF0aCBkPSJNMTI0LjYwNCA3LjM1NDEzSDExOC41MDRWMzMuMjI5OEgxMjEuODEyVjIxLjE1NDVIMTI0LjYwNEMxMjcuMTg4IDIxLjE1NDUgMTI4Ljg0MiAyMC40MjI3IDEyOS41NjYgMTguODAyMkMxMjkuOTI4IDE3Ljg2MTIgMTMwLjAzMSAxNy4xMjk0IDEzMC4wMzEgMTQuMjU0M0MxMzAuMDMxIDExLjM3OTIgMTI5LjkyOCAxMC41OTUxIDEyOS41NjYgOS43NTg3NEMxMjguODQyIDguMDg1OTYgMTI3LjE4OCA3LjM1NDEzIDEyNC42MDQgNy4zNTQxM1pNMTI2LjQxMyAxNi45MjAzQzEyNi4wNTEgMTcuODYxMiAxMjUuMTcyIDE4LjA3MDMgMTIzLjc3NiAxOC4wNzAzSDEyMS44MTJWMTAuMjI5MkgxMjMuNzc2QzEyNS4xNzIgMTAuMjI5MiAxMjYuMDUxIDEwLjQ5MDYgMTI2LjQxMyAxMS4zNzkyQzEyNi42MiAxMS44NDk3IDEyNi42NzEgMTIuMTExMSAxMjYuNjcxIDE0LjE0OThDMTI2LjY3MSAxNi4xMzYyIDEyNi42MiAxNi41MDIxIDEyNi40MTMgMTYuOTIwM1oiIGZpbGw9IndoaXRlIi8+CiAgPHBhdGggZD0iTTEzMi40NjEgMzMuMjI5OEgxNDEuODY5VjMwLjE0NTdIMTM1LjgyMVYyMS4wNUgxNDEuNzEzVjE3Ljk2NThIMTM1LjgyMVYxMC40MzgzSDE0MS44NjlWNy4zNTQxM0gxMzIuNDYxVjMzLjIyOThaIiBmaWxsPSJ3aGl0ZSIvPgo8L3N2Zz4K"
	                          width="181px" height="34.76px" class="css-1cubea9">
	                        </span>
	                      </div>
	                      <h1 class="css-1bmxwx8">
	                      <span class="css-1haseg">취향분석</span>
	                        <div class="css-1yyol1o">
	                          <div class="css-170kft5">
	                            <div class="css-fom973-ProfilePhotoImage"></div>
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
		                              	<a title="${actorVo.actor_name}" class="css-1aaqvgs-InnerPartOfListWithImage"  href="/ko-KR/people/actor_id?${actorVo.id}">
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
		                              	<a title="${directorVo.director_name}" class="css-1aaqvgs-InnerPartOfListWithImage"  href="/ko-KR/people/director_id?${directorVo.id}">
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
	            </div>
	          </div>
	        </section>
	      </div>
	    </div>
	  </div>
	</body>
</html>