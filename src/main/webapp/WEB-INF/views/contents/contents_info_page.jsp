<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>컨텐츠 정보 상세페이지</title>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/login.css" rel="stylesheet" type="text/css">
		<link href="/css/content_info_page.css" rel="stylesheet" type="text/css">
		
		<style>
			* { margin:0; padding:0; text-decoration:none; font-family:'Noto Sans KR', sans-serif; }
			
			.square_div{ position:relative; width:100%; }
		</style>
		
		<script>
			$(function() {
				/* 로그인 창 띄우기 */
				$(".login_button").click(function() {
					if ( $(".css-14gy7wr").css("display") == "none" ) {
						$(".css-14gy7wr").show();
					}
				});
				/* 로그인 창 내리기 */
				$(".css-14gy7wr").click(function() {
					if ( $(".css-14gy7wr").css("display") != "none" ) {
						$(".css-14gy7wr").hide();
					}
				});
			});
		</script>
	</head>
	<body>
		<div id="root">
		    <div class="css-5jq76">
		        <div class="square_div">
		            
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->

		            <section class="section">
		                <section class="secion2 e1ntr3260">
		                    <header class="section2_header">
		                        <div class="header_div">
		                            <div>
		                                <button class="history_back e1t9gclr0 e1k34u8y0"></button>
		                            </div>
		                        </div>
		                        <div class="header_title_div">
		                            <div class="header_title">기본 정보</div>
		                        </div>
		                        <div class="header_title2">기본 정보</div>
		                    </header>
	                        <div class="section2_content_div emmoxnt0">
	                            <ul class="section2_content_ul e1kvv3950">
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">원제</dt>
	                                    <dd class="section2_content_dd e1kvv3953">Avatar: The Way of Water</dd>
	                                </dl>
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">제작 연도</dt>
	                                    <dd class="section2_content_dd e1kvv3953">2022</dd>
	                                </dl>
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">국가</dt>
	                                    <dd class="section2_content_dd e1kvv3953">미국</dd>
	                                </dl>
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">장르</dt>
	                                    <dd class="section2_content_dd e1kvv3953">액션/모험/판타지/SF</dd>
	                                </dl>
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">상영시간</dt>
	                                    <dd class="section2_content_dd e1kvv3953">3시간 12분</dd>
	                                </dl>
	                                <dl class="section2_content_dl e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">연령 등급</dt>
	                                    <dd class="section2_content_dd e1kvv3953">12세 관람가</dd>
	                                </dl>
	                                <dl class="section2_content_dl2 e1kvv3951">
	                                    <dt class="section2_content_dt e1kvv3952">내용</dt>
	                                    <dd class="section2_content_dd2 e1kvv3954">&lt;아바타: 물의 길&gt;은 판도라 행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투, 그리고 견뎌내야 할 상처에 대한 이야기를 그렸다.<br><br>월드와이드 역대 흥행 순위 1위를 기록한 전편 &lt;아바타&gt;에 이어 제임스 카메론 감독이 13년만에 선보이는 영화로, 샘 워싱턴, 조 샐다나, 시고니 위버, 스티븐 랭, 케이트 윈슬렛이 출연하고 존 랜도가 프로듀싱을 맡았다.
	                                    </dd>
	                                </dl>
	                            </ul>
	                        </div>
		                </section>
		            </section>
		        </div>
		    </div>
		</div>
	</body>
</html>