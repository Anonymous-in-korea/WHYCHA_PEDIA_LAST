<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Collection2</title>

		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<link href="../css/collection_SY.css" rel="stylesheet" type="text/css">
		<link href="../css/popup_collection.css" rel="stylesheet" type="text/css">
		<link href="../css/header.css" rel="stylesheet" type="text/css">
	    <link href="../css/login.css" rel="stylesheet" type="text/css">
	    <link href="../css/join.css" rel="stylesheet" type="text/css">
		<link href="../css/footer.css" rel="stylesheet" type="text/css">
		<link href="../images/whycha_small_logo1.png" rel="shortcut icon" type="image/x-icon">

		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
		<script src="../js/login.js"></script>
		<script src="../js/join.js"></script>
		
		<script>
	    	$(function() {
	    		
	    		
				/* 컬렉션 창 띄우기 */
				$("#collection_box").click(function() {
					if ( $(".css-collection_popUp2").css("display") == "none" ) { $(".css-collection_popUp2").show(); }
				});
				
				/* 컬렉션 창 내리기 */
				$(".css-1d7tft4-StylelessButton-HeaderCloseButtonSelf").click(function() {
					if ( $(".css-collection_popUp2").css("display") != "none" ) { $(".css-collection_popUp2").hide(); }
				})
				
				/*확인버튼*/
				$(".css-collection_addcheck").click(function() {
				});
			});
		</script>
	</head>
	<body>
		<div id="root">
			<div class="css-5jq76">
				<div class="css-1xm32e0">
					<!-- header start -->
					<%@ include file="../head_foot/header.jsp" %>
					<!-- header end -->
					<section class="css-18gwkcr">
						<section class="css-9v5p4g-StyledSectionWithShrinkHeaderBar e1ntr3260">
							<header class="css-4g5dyy">
								<div class="css-uf1ume">
									<div class="css-0" style="float:left;">
									    <c:if test="${sessionId != null }">
										<button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0" onclick="location.href='/myPage/myPage_SY">
											<img src="/images/arrow_btn.png" style="width:100%;">
										</button>
										</c:if>
										 <c:if test="${sessionId == null }">
										<button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0" onclick="location.href='/myPage/userPage_SY?user_id=${memberVo.id}'">
											<img src="/images/arrow_btn.png" style="width:100%;">
										</button>
										</c:if>
									</div>
								</div>
								<div class="css-1d4ojes">
									<div class="css-1bvesam">
										<span class="css-collection_user">${memberVo.user_name}</span>님의 [영화]컬렉션
										<span class="css-addcollectionBox_span">
											<c:if test="${sessionId != null }">
											 <button class="css-1d4r906-StylelessButton" id="collection_box" >
	                                   			 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 23" width="512" height="512"
	                                                   fill="none" class="injected-svg css-vkoibk"
	                                                   data-src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg==">
	                                                   <path d="M23.576,6.429l-1.91-3.171L12,.036,2.334,3.258,.442,6.397c-.475,.792-.563,1.742-.243,2.607,.31,.839,.964,1.488,1.8,1.793l-.008,9.844,10,3.333,10-3.333,.008-9.844c.846-.296,1.507-.946,1.819-1.788,.317-.857,.229-1.797-.242-2.582Zm-5.737-2.338l-5.831,1.946-5.833-1.951,5.825-1.942,5.839,1.946ZM2.156,7.428l1.292-2.145,7.048,2.357-1.529,2.549c-.239,.398-.735,.581-1.173,.434l-5.081-1.693c-.297-.099-.53-.324-.639-.618-.108-.293-.079-.616,.082-.883Zm1.843,4.038l3.163,1.054c1.343,.448,2.792-.088,3.521-1.302l.316-.526-.005,10.843-7-2.333,.006-7.735Zm8.994,10.068l.005-10.849,.319,.532c.556,.928,1.532,1.459,2.561,1.459,.319,0,.643-.051,.96-.157l3.161-1.053-.006,7.734-7,2.333Zm8.95-13.216c-.105,.285-.331,.503-.619,.599l-5.118,1.706c-.438,.147-.934-.035-1.173-.434l-1.526-2.543,7.051-2.353,1.305,2.167c.156,.26,.186,.573,.08,.858Z" fill="currentColor"></path>
	                                              </svg>&nbsp;+새 컬렉션
	                                		 </button>
	                                		 </c:if>
										</span>
									</div>
								</div>
								<div class="css-10bjf2k">영화</div>
							</header>
				<!----------------------------------- 컬렉션이 없어요 이미지 시작------------------------------------------->
							<c:if test="${isInCollection == 0}">
							<section class="css-yey362">
								<div class="css-1gkas1x-Grid e1689zdh0">
									<div class="css-1wq3gbk-Self eblbipc0">
										<button class="css-collectionAdd_button">
											<span
												src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg=="
												class="css-1qrj66x-ErrorImage">
											</span>
											<div class="css-1qytvfb-Message">
												<div class="css-collection_Error_word">작성한 컬렉션이 없어요.</div>
												<c:if test="${sessionId != null }">
												<div class="css-collection_Error_word">나만의 컬렉션을 새로 만들어 주세요.</div>
												</c:if>
											</div>
										</button>
									</div>
								</div>
							</section>
							</c:if>
				<!------------------------------------ 컬렉션이 없어요 이미지 끝------------------------------------------ -->
				<!---------------------------컬랙션 섹션 시작 ---------------------------------------------->
						<c:if test="${isInCollection == 1}">
			 				<div class="css-12hxjcc-StyledHideableBlock e1pww8ij0" >
								<section class="css-yykl48-pageMarginStyle">
									<ul class="css-1ut4alo-VisualUl">
									<!-- foreach문 돌릴 부분 컬렉션div -->
									<c:forEach items="${collectionVoList}" var="CollectionVo" > 
										<li class="css-ovtvwa">
											<a title="${CollectionVo.collection_name}" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/collection/collection_detail_HY?collection_id=${CollectionVo.id}">
												<div class="css-m7az3s">
													<div class="css-1sarkww">
														<div class="css-vc4xb">
															<div class="css-11gwmvo">
																<div poster="https://an2-img.amz.wtchn.net/image/v2/Kh9MU2D6QKNnlyAiG38qYw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM1JxYUdkbGNqaDVkSEIwZGpSNFkzZGhaWFJtSW4wLkxKXzlVZnNGOW56d1F1aU9WX2NZME9QNDVYdjFuSHVpZmNZSWFkbjQtXzQ" 
																class="css-hdhlfe"></div>
																<div poster="https://an2-img.amz.wtchn.net/image/v2/Kh9MU2D6QKNnlyAiG38qYw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM1JxYUdkbGNqaDVkSEIwZGpSNFkzZGhaWFJtSW4wLkxKXzlVZnNGOW56d1F1aU9WX2NZME9QNDVYdjFuSHVpZmNZSWFkbjQtXzQ" class="css-hdhlfe"></div>
															</div>
															<div class="css-11gwmvo">
																<div poster="https://an2-img.amz.wtchn.net/image/v2/KmQ2Y9px5vbdRhQJ1SuNrQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMnBzWVhVM05uQjJNVGgwYTJRNGVYRjJaM0ZpSW4wLkpUeFNoYVhWMFAyZlN2d0EyV2lHRmR4Y2gzVDZBMjc4TW1KZVBueTlrZmM" class="css-3a1vh6"></div>
																<div poster="https://an2-img.amz.wtchn.net/image/v2/NWMV3pDrbacNryQOOURhdQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjlsWjNKcVpHeDBabWwzWldGeGFtWnJNRE51SW4wLmprS2hIOGlxVzR0TU9GajRkVlExQ19KR20wX2p2WVRMNDlNeFBrSUotUnc" class="css-1lebkd8"></div>
															</div>
															<div class="css-11gwmvo">
																<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-qpso0m"></div>
																<div poster="https://an2-img.amz.wtchn.net/image/v2/Ht3b1vCvRnS6phBm4DpgOQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmgyYTNkdlltNXZOVzlxY0RadVlXOXBkRzA0SW4wLlpSRHJGR3dBMjhsNzNabGdvRXNfYzM0ZEhFOEphQ2tkM3NKX3pDazNIbHc" class="css-uifub2"></div>
																<div poster="https://an2-img.amz.wtchn.net/image/v2/rQwrHoyzK6rv2t1cjbqIwA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0IxZEdkdGVXUXplbkJwYTJ4aWMydG1aV2RxSW4wLks3Ulg5Z1ZiRDJaU1ZTM3UtRkZvRnVzeVhxbExGYnR3X0xxZ3BaOVRYYVU" class="css-1c7wnm0"></div>
															</div>
															<div class="css-11gwmvo">
																<div poster="https://an2-img.amz.wtchn.net/image/v2/mOfjGIfQUfR9spFR54MQmA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0ZxZURSbWIzUnpaR1p1Y0dsMmIzbzViV053SW4wLlVNUHNiSkdmVkVPUGN6VTV4TUN2M01YSWRGT09mSUNDQVZJeUNmbVRVdDg" class="css-1ltg06n"></div>
																<div poster="https://an2-img.amz.wtchn.net/image/v2/0REDPggrDaqRTzwKkqXhTw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0puZEdoeWVHRjZhM1JyZW5Sck9IZHZaemw2SW4wLlJWWnp2bnVEbzNVNWg5Sm9IQlpRWHoxYXVSRnJiUmhTWVdxdGRNY0JSQXM" class="css-1pw0ykk"></div>
															</div>
														</div>
													</div>
													<div class="css-11riikv">${CollectionVo.collection_name}</div>
													<div class="css-1on8oyq">${CollectionVo.collection_desc}</div>
													<div class="css-hsecj5">
														<div class="css-1j0k1vy">
															<div class="css-q29adr-ProfilePhotoImage"></div>
														</div>
														${memberVo.user_name}
													</div>
													<div class="css-znoruf">
														좋아요 ${CollectionVo.like_count}
														<span class="css-1roze2l"></span>
														댓글 ${CollectionVo.comment_count}
													</div>
												</div>
											</a>
										</li>
									</c:forEach>
									<!-- foreach문 돌릴 부분 컬렉션div -->		
									</ul>
									<div class="css-1sj9zzf">
										<button class="css-1d4r906-StylelessButton" id="collection_box">
											더보기
											<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjEwMDFMMTIgMTQuNjAwMUwxNy41IDkuMTAwMSIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K" width="24px" height="24px" class="css-cg0u6i"></span>
										</button>
									</div>
								</section>
							</div> 
						</c:if>			
				<!------------------------------------------------ 컬랙션 섹션 끝----------------------------------------------->
						</section>
					</section>
				</div>
				<div disabled="" class="css-pjxj5o"></div>
				<div class="css-vi9yju">
					<div>
					 <!-- =============================		컬렉션 팝업창 로그인 후 시작  ==========================================================-->
					<div class="css-collection_popUp2" style="display: none">
						<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
							<div class="css-ikkedy">
								<header title="" class="css-155l1de-HeaderBarPrimitive">
									<div class="css-19pxr9t">
										<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
									</div>
									<div class="css-addMycollection">새 컬렉션</div>
									<div class="css-collection_addcheck">확인</div>
								</header>
								<div class="css-1s8we4x">
									<div class="css-oi2wld">
										<div class="css-blhbko2">
											<div class="css-newcollection_input_div">
												<ul class="css-newcollection_ul">
													<li class="css-newcollection_li_first">
														<div class="css-newcollection_input">
															<label class="css-newcollection_label_first">
																<div class="css-1smbjja">
																	<input autocomplete="off" placeholder="컬렉션 제목" type="text" name="" id="" class="css-1oyrbwm" value="">
																</div>
															</label>
														</div>
													</li>
													<li class="css-newcollection_li_second">
														<div class="css-newcollection_input2">
					
															<label class="css-newcollection_label_second">
																<div class="css-1smbjja">
																	<!-- <input autocomplete="off" placeholder="설명입력하기.." type="text" name="" id="" class="css-1oyrbwm" value=""> -->
															
																	<textarea autocomplete="off" placeholder="설명 입력.." name="" id="" class="css-1oyrbwm" rows="4"></textarea>
																</div>
															</label>
														</div>
													</li>
													<!-- <li class="css-newcollection_li_third"><span
														class="css-newcollection_span">작품들</span>
														<div class="css-newcollection_img_div">
															<div class="css-imgbox">
																<span class="css-imgbox_span">+</span>
																<div class="css-imgbox_div">작품추가</div>
															</div>
														</div>
													</li> -->
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	<!-- 	=================================컬렉션 팝업창 로그인 후  끝=====================================================  --> 
					</div>
				</div>
				<div class="css-any20b">
					<div></div>
				</div>
			</div>
		</div>
	</body>
</html>