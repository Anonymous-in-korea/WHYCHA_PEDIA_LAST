<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <link rel="icon" href="/assets/img/favicon.png"/>
	    <link href="/css/header.css" rel="stylesheet" type="text/css">
		<link href="/css/footer.css" rel="stylesheet" type="text/css">
		<link href="css/artist_page.css" rel="stylesheet" type="text/css">
	    <meta charset="utf-8">
	    <link rel="icon" href="/image/favicon.png" />
	    <script defer src="/js/artist_page_young.js"></script>
	    <title id="titleName">왓챠피디아</title>
	    <!-- 필요한 CSS, JS 로드 -->
	    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	    <!--jquery + javascript-->
	</head>
	<body>
		<div id="root">
		    <div class="css-5jq76">
		        <div class="css-1xm32e0">
		            <header class="css-6k8tqb">
		                <div th:replace="fragment/header::header">
							<!-- header start -->
							<%@ include file="head_foot/header.jsp" %>
							<!-- header end -->
		                </div>
		            </header>
		            <input type="hidden" id="personIdx">
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
		                                                <div class="css-ir3bkd-ProfilePhotoImage" id="personPhoto"></div>
		                                            </div>
		                                        </div>
		                                        <div class="css-n52eyj">
		                                            <h1 id="personName">김고은</h1>
		                                            <p id="perRole">배우</p>
		                                            <p id="perLike">🙆🏻‍♀️PEOPLE</p>
		                                        </div>
		                                    </div>
		                                    <hr class="css-god8tc">
											<!-- 좋아요 버튼 -->
		                                    <button id="like" class="css-1ski1qz-StylelessButton-StyledActionButton e150ls9t0">
		                                        <div class="css-1umclh2-StyledIconContainer e150ls9t1">
		                                            <svg viewBox="0 0 20 20" class="css-vkoibk">
		                                                <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd"
		                                                      d="M5.6252 7.9043H3.1252C2.6652 7.9043 2.29187 8.27763 2.29187 8.73763V17.071C2.29187 17.531 2.6652 17.9043 3.1252 17.9043H5.6252C6.08604 17.9043 6.45854 17.531 6.45854 17.071V8.73763C6.45854 8.27763 6.08604 7.9043 5.6252 7.9043Z"
		                                                      fill="#87898B"></path>
		                                                <path class="fillTarget" fill-rule="evenodd" clip-rule="evenodd"
		                                                      d="M11.71 4.34525L11.7017 3.99359L11.6825 3.14525L11.6809 3.09692L11.6759 3.04942C11.6684 2.96942 11.6792 2.93442 11.6775 2.93275C11.6917 2.92442 11.7534 2.90442 11.8725 2.90442C12.115 2.90442 13.3225 2.97609 13.3225 4.38692C13.3225 4.93359 13.2775 5.35859 13.1809 5.72692L12.8375 7.03275C12.8034 7.16525 12.9025 7.29442 13.0392 7.29442H14.3892H15.7317C16.0575 7.29442 16.3684 7.43692 16.585 7.68442C16.7975 7.93025 16.9009 8.25609 16.87 8.58275L15.6717 14.7703L15.6634 14.8119L15.6584 14.8536C15.59 15.3961 15.0959 15.8211 14.5334 15.8211H8.54169V8.19942C8.54169 7.89109 8.71169 7.56275 9.04835 7.22359L11.3417 4.90025L11.5775 4.66109C11.71 4.52359 11.71 4.34525 11.71 4.34525ZM17.5275 6.86525C17.0734 6.34275 16.4184 6.04442 15.7317 6.04442H14.3892C14.5167 5.56025 14.5725 5.02942 14.5725 4.38692C14.5725 2.50942 13.1734 1.65442 11.8725 1.65442C11.3825 1.65442 11 1.80775 10.7367 2.11025C10.5667 2.30359 10.3792 2.64442 10.4325 3.17359L10.4517 4.02192L8.15835 6.34525C7.58335 6.92692 7.29169 7.55109 7.29169 8.19942V16.2378C7.29169 16.6978 7.66502 17.0711 8.12502 17.0711H14.5334C15.7342 17.0711 16.7559 16.1603 16.8992 15.0078L18.1067 8.77192C18.1925 8.08109 17.9809 7.38692 17.5275 6.86525Z"
		                                                      fill="#87898B"></path>
		                                            </svg>
		                                        </div>
		                                        <span type="mobile" class="css-1uf9j27-StyledButtonText e150ls9t2">좋아요 262</span>
		                                        <span type="desktop" class="css-mr5mym-StyledButtonText e150ls9t2">좋아요 262명이 이 인물을 좋아합니다</span>
		                                    </button>
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
		                                                <!-- 출연작 불러오기 1개 -->
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1">
	                                                                </div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"  height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9">
	                                                                        </div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos">
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		                                                <!-- 출연작 불러오기 1개 -->
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1">
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"  height="10" viewBox="0 0 12 10" xmlns="http://www.w3.org/2000/svg" fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9">
		                                                                    </div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos">
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10" viewBox="0 0 12 10"
		                                                                     xmlns="http://www.w3.org/2000/svg"
		                                                                     fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                          d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1"></div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"
		                                                                         height="10" viewBox="0 0 12 10"
		                                                                         xmlns="http://www.w3.org/2000/svg"
		                                                                         fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd"
		                                                                              clip-rule="evenodd"
		                                                                              d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9"></div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos"></div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10"
		                                                                     viewBox="0 0 12 10"
		                                                                     xmlns="http://www.w3.org/2000/svg"
		                                                                     fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                          d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1"></div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"
		                                                                         height="10" viewBox="0 0 12 10"
		                                                                         xmlns="http://www.w3.org/2000/svg"
		                                                                         fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd"
		                                                                              clip-rule="evenodd"
		                                                                              d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9"></div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos"></div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10"
		                                                                     viewBox="0 0 12 10"
		                                                                     xmlns="http://www.w3.org/2000/svg"
		                                                                     fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                          d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1"></div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"
		                                                                         height="10" viewBox="0 0 12 10"
		                                                                         xmlns="http://www.w3.org/2000/svg"
		                                                                         fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd"
		                                                                              clip-rule="evenodd"
		                                                                              d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9"></div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos"></div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10"
		                                                                     viewBox="0 0 12 10"
		                                                                     xmlns="http://www.w3.org/2000/svg"
		                                                                     fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                          d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		                                                <a class="w_exposed_cell css-11g9kr1" data-rowindex="6" href="/ko-KR/contents/tl9g0BW" id="tvList">
		                                                    <div type="tv_seasons" class="css-1979x9z">
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-pvl49n-StyledImg ezcopuc1"></div>
		                                                        </div>
		                                                        <div class="css-1gv9bw8">
		                                                            <div class="css-1huturz">작은 아씨들</div>
			                                                            <div class="css-1am0jvf">2022
				                                                            <span class="css-12q1d8d">
					                                                            <svg width="1" height="8" viewBox="0 0 1 8"  fill="none" xmlns="http://www.w3.org/2000/svg">
					                                                            	<rect y="0.5" width="1" height="7" fill="black" fill-opacity="0.1"></rect>
					                                                            </svg>
				                                                            </span>출연
			                                                            </div>
		                                                            <div class="css-1fsqh7h">
		                                                                <div class="css-bql08h">평균
		                                                                    <svg width="12"
		                                                                         height="10" viewBox="0 0 12 10"
		                                                                         xmlns="http://www.w3.org/2000/svg"
		                                                                         fill="#787878" class="css-ebm5wj">
		                                                                        <path fill-rule="evenodd"
		                                                                              clip-rule="evenodd"
		                                                                              d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                        </path>
		                                                                    </svg>
		                                                                    4.0
		                                                                </div>
		                                                                <div class="css-13lviui">
		                                                                    <div src="https://an2-img.amz.wtchn.net/image/v2/02219d4cc10cbc20189be2146269c045.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpBM09UazNNRGMwTWpjMk5URTVNemt3SW4wLjAzcU9OMDFjRk11cWhTRktOejNDdEFIbFN2YnZCSU92a1l4YmRRa1dvOHM"
		                                                                         class="css-4ra9r9"></div>
		                                                                </div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                    <div type="tv_seasons" class="css-1726275">
		                                                        <div class="css-1vjd65c" id="tvdata">2022</div>
		                                                        <div type="tv_seasons" class="css-1fqhpd6">
		                                                            <div
		                                                                    class=" css-eyiymt-StyledLazyLoadingImage ezcopuc0">
		                                                                <img src="https://an2-img.amz.wtchn.net/image/v2/7UyW2iL-7MmCiNow9ZI-pw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk5Ea3dlRGN3TUhFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5qQTFOVFV4TWpFek9UUTNORFExTURraWZRLkhYcVgyMFB0XzFJdGxoMUlDT056RHhndlNSSTFTcWJVUFBKV3VXWERQQzQ"
		                                                                     class="css-qhzw1o-StyledImg ezcopuc1" id="tvpos"></div>
		                                                        </div>
		                                                        <div class="css-1huturz" id="tvTitle">작은 아씨들</div>
		                                                        <div class="css-uideuz" id="tvRole">출연</div>
		                                                        <div class="css-1fk9ffn">
		                                                            <div class="css-bql08h">평균
		                                                                <svg width="12" height="10"
		                                                                     viewBox="0 0 12 10"
		                                                                     xmlns="http://www.w3.org/2000/svg"
		                                                                     fill="#787878" class="css-ebm5wj">
		                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
		                                                                          d="M6 8.02L3.14233 9.91131C2.91094 10.0644 2.61352 9.84836 2.68767 9.58097L3.60334 6.27872L0.921531 4.14536C0.704379 3.97262 0.817982 3.62299 1.0952 3.61087L4.51878 3.46128L5.719 0.251483C5.81619 -0.00842059 6.18381 -0.00842094 6.281 0.251483L7.48122 3.46128L10.9048 3.61087C11.182 3.62299 11.2956 3.97262 11.0785 4.14536L8.39666 6.27872L9.31233 9.58097C9.38648 9.84836 9.08906 10.0644 8.85767 9.91131L6 8.02Z">
		                                                                    </path>
		                                                                </svg>
		                                                                <span id="tvPoint"></span>
		                                                            </div>
		                                                        </div>
		                                                        <div class="css-13lviui">
		                                                            <div class="isWatcha" id="tvWatcha">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v2/33c15d90f101414a351372f19172859f.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd1lYUm9Jam9pTDNZeUwzTjBiM0psTDNWcGJXRm5aUzh4TmpFeE1qQXdNVGN3T1RZd05qWTVNRE0xSW4wLlFwWFc3MERPaF9GR3ZMWVVzSUFCOFdLNWhLRjE3Ym5za1Z1bVFEN0lsSkU" class="css-vvy31y"></div>
		                                                            </div>
		                                                            <div class="isNetflix" id="tvNetflix">
		                                                                <div src="https://an2-img.amz.wtchn.net/image/v1/updatable_images/2571/original/42e70f1bc34d7af54478a311983ecf6d3601eefa.png" class="css-1uf1oz6"></div>
		                                                            </div>
		                                                        </div>
		                                                    </div>
		                                                </a>
		
		                                                <div class="css-1gh9vn6" id="tvmorebtn">
		                                                    <button class="css-1gvrt49" onclick="tvmore()">
		                                                        <p class="css-122mh9j">더보기</p><img
		                                                            src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik02LjUgOS4wOTk5OEwxMiAxNC42TDE3LjUgOS4wOTk5OCIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K"
		                                                            alt="load more">
		                                                    </button>
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
							<%@ include file="head_foot/footer1.jsp" %>
							<!-- footer end -->
		            </div>
		    	</div>
			</div>
		</div>
	</body>
</html>