<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
										<button class="e1t9gclr0 css-a6n3jw-StylelessButton-HeaderCloseButtonSelf-TopLeftButton e1k34u8y0">
											<img src="/images/arrow_btn.png" style="width:100%;">
										</button>
									</div>
								</div>
								<div class="css-1d4ojes">
									<div class="css-1bvesam">
										<span class="css-collection_user">원수영</span>님의 [영화]컬렉션
										<span class="css-addcollectionBox_span">
											 <button class="css-1d4r906-StylelessButton" id="collection_box">
	                                   			 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 23" width="512" height="512"
	                                                   fill="none" class="injected-svg css-vkoibk"
	                                                   data-src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg==">
	                                                   <path d="M23.576,6.429l-1.91-3.171L12,.036,2.334,3.258,.442,6.397c-.475,.792-.563,1.742-.243,2.607,.31,.839,.964,1.488,1.8,1.793l-.008,9.844,10,3.333,10-3.333,.008-9.844c.846-.296,1.507-.946,1.819-1.788,.317-.857,.229-1.797-.242-2.582Zm-5.737-2.338l-5.831,1.946-5.833-1.951,5.825-1.942,5.839,1.946ZM2.156,7.428l1.292-2.145,7.048,2.357-1.529,2.549c-.239,.398-.735,.581-1.173,.434l-5.081-1.693c-.297-.099-.53-.324-.639-.618-.108-.293-.079-.616,.082-.883Zm1.843,4.038l3.163,1.054c1.343,.448,2.792-.088,3.521-1.302l.316-.526-.005,10.843-7-2.333,.006-7.735Zm8.994,10.068l.005-10.849,.319,.532c.556,.928,1.532,1.459,2.561,1.459,.319,0,.643-.051,.96-.157l3.161-1.053-.006,7.734-7,2.333Zm8.95-13.216c-.105,.285-.331,.503-.619,.599l-5.118,1.706c-.438,.147-.934-.035-1.173-.434l-1.526-2.543,7.051-2.353,1.305,2.167c.156,.26,.186,.573,.08,.858Z" fill="currentColor"></path>
	                                              </svg>&nbsp;+새 컬렉션
	                                		 </button>
										</span>
									</div>
								</div>
								<div class="css-10bjf2k">영화</div>
							</header>
				<!----------------------------------- 컬렉션이 없어요 이미지 시작------------------------------------------->
	<!-- 						<section class="css-yey362"> -->
	<!-- 							<div class="css-1gkas1x-Grid e1689zdh0"> -->
	<!-- 								<div class="css-1wq3gbk-Self eblbipc0"> -->
	<!-- 									<button class="css-collectionAdd_button"> -->
	<!-- 										<span -->
	<!-- 											src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg==" -->
	<!-- 											class="css-1qrj66x-ErrorImage"> -->
	<!-- 										</span> -->
	<!-- 										<div class="css-1qytvfb-Message"> -->
	<!-- 											<div class="css-collection_Error_word">작성한 컬렉션이 없어요.</div> -->
	<!-- 											<div class="css-collection_Error_word">나만의 컬렉션을 새로 만들어 주세요.</div> -->
	<!-- 										</div> -->
	<!-- 									</button> -->
	<!-- 								</div> -->
	<!-- 							</div> -->
	<!-- 						</section> -->
				<!------------------------------------ 컬렉션이 없어요 이미지 끝------------------------------------------ -->
				<!---------------------------컬랙션 섹션 시작 ---------------------------------------------->
				 <div class="css-12hxjcc-StyledHideableBlock e1pww8ij0" >
										<section class="css-yykl48-pageMarginStyle">
											<ul class="css-1ut4alo-VisualUl">
											<!-- list1 start -->	
												<li class="css-ovtvwa">
													<a title="<어벤져스 : 엔드게임> 보기 전, 마블 영화 정주행 순서! " class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdkwxgZJb">
														<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/Kh9MU2D6QKNnlyAiG38qYw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM1JxYUdkbGNqaDVkSEIwZGpSNFkzZGhaWFJtSW4wLkxKXzlVZnNGOW56d1F1aU9WX2NZME9QNDVYdjFuSHVpZmNZSWFkbjQtXzQ" class="css-hdhlfe"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/NWMV3pDrbacNryQOOURhdQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjlsWjNKcVpHeDBabWwzWldGeGFtWnJNRE51SW4wLmprS2hIOGlxVzR0TU9GajRkVlExQ19KR20wX2p2WVRMNDlNeFBrSUotUnc" class="css-1lebkd8"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/KmQ2Y9px5vbdRhQJ1SuNrQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMnBzWVhVM05uQjJNVGgwYTJRNGVYRjJaM0ZpSW4wLkpUeFNoYVhWMFAyZlN2d0EyV2lHRmR4Y2gzVDZBMjc4TW1KZVBueTlrZmM" class="css-3a1vh6"></div>
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
															<div class="css-11riikv">&lt;어벤져스 : 엔드게임&gt; 보기 전, 마블영화 정주행 순서!</div>
															<div class="css-1on8oyq">잘 모른다면 꼭 보시고 🙆🏻‍♂️ 다 보셨어도 또 보세요! 🙆🏻‍♀️</div>
													<!-- ott image 부분시작 -->
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-q29adr-ProfilePhotoImage"></div>
																</div>
																WATCHA
																<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iI0Y3MTc1QSIvPgogIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNS4xNjA2MSA4LjMyODk1QzUuMDM5ODcgOC4zMjg5NSA0LjkyNDU4IDguMjgwODMgNC44MzkyNCA4LjE5NjRMMy4xMzM0NSA2LjQ4ODhDMi45NTU1MiA2LjMxMDg2IDIuOTU1NTIgNi4wMjM5OSAzLjEzMzQ1IDUuODQ2OTdDMy4zMTA0NyA1LjY2OTA0IDMuNTk3MzQgNS42NjkwNCAzLjc3NTI4IDUuODQ2OTdMNS4xNjA2MSA3LjIzMzIxTDguMjI0NSA0LjE2ODQxQzguNDAyNDMgMy45OTEzOSA4LjY4OTMgMy45OTEzOSA4Ljg2NzIzIDQuMTY4NDFDOS4wNDQyNiA0LjM0NTQ0IDkuMDQ0MjYgNC42MzMyMiA4Ljg2NzIzIDQuODEwMjRMNS40ODE5OCA4LjE5NjRDNS4zOTY2NCA4LjI4MDgzIDUuMjgxMzUgOC4zMjg5NSA1LjE2MDYxIDguMzI4OTVaIiBmaWxsPSJ3aGl0ZSIvPgogIDxwYXRoIGQ9Ik01LjE2MDYxIDguMzI4OTVWOC4zMjg5NUM1LjAzOTg3IDguMzI4OTUgNC45MjQ1OCA4LjI4MDgzIDQuODM5MjQgOC4xOTY0TDMuMTMzNDUgNi40ODg4QzIuOTU1NTIgNi4zMTA4NiAyLjk1NTUyIDYuMDIzOTkgMy4xMzM0NSA1Ljg0Njk3QzMuMzEwNDcgNS42NjkwNCAzLjU5NzM0IDUuNjY5MDQgMy43NzUyOCA1Ljg0Njk3TDUuMTYwNjEgNy4yMzMyMUw4LjIyNDUgNC4xNjg0MUM4LjQwMjQzIDMuOTkxMzkgOC42ODkzIDMuOTkxMzkgOC44NjcyMyA0LjE2ODQxQzkuMDQ0MjYgNC4zNDU0NCA5LjA0NDI2IDQuNjMzMjIgOC44NjcyMyA0LjgxMDI0TDUuNDgxOTggOC4xOTY0QzUuMzk2NjQgOC4yODA4MyA1LjI4MTM1IDguMzI4OTUgNS4xNjA2MSA4LjMyODk1IiBzdHJva2U9IndoaXRlIiBzdHJva2Utd2lkdGg9IjAuMjUiLz4KPC9zdmc+Cg==" class="css-114ywgf"></span>
																<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-amcv0d"></span>
															</div>
													<!-- ott image 부분끝 -->
															<div class="css-znoruf">
																좋아요 824
																<span class="css-1roze2l"></span>
																댓글 10
															</div>
														</div>
													</a>
												</li>
											<!-- list1 end	 -->
											<!-- list2 start	 -->
												<li class="css-ovtvwa">
												<a title="어벤져스" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdkW67gj9">
													<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a">
																		</div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-qpso0m"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">어벤져스</div>
															<div class="css-1on8oyq">2012. 4. 26. 서울대입구 메가박스 민섭♡♡</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-arn25s-ProfilePhotoImage"></div>
																</div>
																김주혜
															</div>
															<div class="css-znoruf">
																좋아요 1
																<span class="css-1roze2l"></span>
																댓글 0
															</div>
														</div>
													</a>
												</li>
											<!-- list2 end -->
											<!-- list3 start -->
												<li class="css-ovtvwa">
													<a title="어벤져스" lass="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdk2DP5EN">
														<div class="css-m7az3s">
																<div class="css-1sarkww">
																	<div class="css-vc4xb">
																		<div class="css-11gwmvo">
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/NWMV3pDrbacNryQOOURhdQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMjlsWjNKcVpHeDBabWwzWldGeGFtWnJNRE51SW4wLmprS2hIOGlxVzR0TU9GajRkVlExQ19KR20wX2p2WVRMNDlNeFBrSUotUnc" class="css-1lebkd8"></div>
																		</div>
																		<div class="css-11gwmvo">
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/TS7VLT4x-cSzSj18JZMncA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmg1T1RBeE4yaG9lRzFvWTNWalptbGpZbVZqSW4wLnp4My0zZ1JtejdCZWFMQTJKWXkwNndXaGZYNFVJeDhCNWotWU9fN3Vmdk0" class="css-1hdabjv"></div>
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/OhO-q78YtR1iyk7OVtyQDg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM3B0T1RkMWNXWjVOM2R3YVhsc2R6aHJhREJ3SW4wLjc3QW9BcVZlUlpta0thZ3U3YXlHVlpvMDVhRjBQYU43N0Q0V3pxZlhaQWc" class="css-1oa0hdt"></div>
																		</div>
																		<div class="css-11gwmvo">
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/mOfjGIfQUfR9spFR54MQmA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0ZxZURSbWIzUnpaR1p1Y0dsMmIzbzViV053SW4wLlVNUHNiSkdmVkVPUGN6VTV4TUN2M01YSWRGT09mSUNDQVZJeUNmbVRVdDg" class="css-1ltg06n"></div>
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/TeNB5rUEKpdhA4qcTFW1Tg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM3AxY21WellUZDNjR1pyZG5jd04zbDFZMkYzSW4wLi1rNnVIOEtGdzFJX3dWcFliczJQZUVGX1lEVkpqUmJMTnh3eVlTZ2lkMkk" class="css-qnq1xc"></div>
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/0REDPggrDaqRTzwKkqXhTw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0puZEdoeWVHRjZhM1JyZW5Sck9IZHZaemw2SW4wLlJWWnp2bnVEbzNVNWg5Sm9IQlpRWHoxYXVSRnJiUmhTWVdxdGRNY0JSQXM" class="css-1pw0ykk"></div>
																		</div>
																		<div class="css-11gwmvo">
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/GkXglQjT7W73o7shaeO2sw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlZrZDNKaWJHNXhkR0k0ZW5KemRtWTFaM2cwSW4wLkxmRVA1ekVBNHJpZzF6ZTNxQm5vdEhoYmowdHh2QnIyN2Q4MFJJODh0Vjg" class="css-1s3yg7r"></div>
																			<div poster="https://an2-img.amz.wtchn.net/image/v2/YmIBrhKShM6S5Tdb2kZn4g.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmh6TlRGeWNIWm1lRGgwWm1FNGRIUTRhalIwSW4wLlJNVnlIRmwzTzVXM1pIam1aeGhQNnB4RFVDRnREM0JPd0NZR3RqV3B1em8" class="css-k6iodf"></div>
																		</div>
																	</div>
																</div>
																<div class="css-11riikv">어벤져스</div>
																<div class="css-1on8oyq"></div>
																<div class="css-hsecj5">
																	<div class="css-1j0k1vy">
																		<div class="css-1kbsdb3-ProfilePhotoImage"></div>
																	</div>
																	이중연<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-amcv0d"></span>
																</div>
																<div class="css-znoruf">
																	좋아요 1<span class="css-1roze2l"></span>
																	댓글 0
																</div>
														</div>
													</a>
												</li>
												<!-- list3 end -->
												<!-- list4 start -->
												<li class="css-ovtvwa">
													<a title="마블 멀티버스 사가 모음 + 엔드게임 이후의 어벤져스" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdkyY8plk">
														<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/ykTTNaeQozVTyCY-kCxaPg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5EazFPREk0TlRJMU16Z3hOVGc1TnpRaWZRLjhLTTh4dnJWcGV2eVp6azhMTjdmYjZ0U0VmMmFUSkFMTXB6UmVjRWVwQUE" class="css-bwgw7d"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/-neA1ak5OXX-tKlL0-lpYQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk16VTBNVEk1T1RZeE5qWTROakUzTmpZaWZRLlVQTWd3MVhFakREa3IybUhJS3FmMC1JbXUzVWVIdF91VG5lVEJKWVhTMFk" class="css-yjd9t"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/t4u75L_CGlSd3d0NPQr3AA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk16Y3dORFkwT1RReU5EQXdOekV5TXpRaWZRLndmdEZKWm15VXF0TXhYVWxwejV4TzBMcE5aSlJQQmotaU8xQVlZajVobUE" class="css-15hixbh"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/djPIUU308F-bG2G32kFqAQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk16azBOak00TURVeU5EUXdNak16TXpJaWZRLnEtQXVFdTY5dVhuOThHbmp1NmdiYU14Q1htQk5EbzVmd3dtbm11aVdpZVU" class="css-wfxx6w"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/dYJIakDkWpJBjdaeJFtmsQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk16azBOak00TXpZd05qUXlNRFEwTVRjaWZRLjd1U01RN1dWTmx4WWlRT0dGemNwVHVhYXFRVjNKcDlXN3hITGdHVzY2Q1U" class="css-1w25n0m"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/5rRKE7JFwHTTsuoIETikpw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UVTNPVGN6TVRFNE1UUXhNRE14T1RNaWZRLjBYOHZUMVRQTEd5bW5fV214LS14b3dIMXZkVWRPTVpvZUQzaEtORDVwRUE" class="css-u9muad"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/vqYI6Pvrg9-CkuQD_hNmjg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk56TTVNak16TWprNU56VTNOREUzTVRBaWZRLk9rRF9FbUxhVVU0V1ZJeUFPQXFiNnEybWE2TTROR2xxTFRFMTRRRHFaakU" class="css-ft4p50"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/BCI8OHPriiVkZhSoI1E7XA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk16a3dNemN3T0RNek1USTFPRGN6TVRnaWZRLktlOE1YZFZBeVJTcnVrWVowR2oyVzZwWC1Nc0x3dFcxbjlwYmZVX20tVXc" class="css-283rna"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">마블 멀티버스 사가 모음 + 엔드게임 이후의 어벤져스</div>
															<div class="css-1on8oyq">뭐....나오면 보긴 할거지만, 이젠 좀 지친다. 확실히 내가 덕질한 마블 영화는 인피니티 사가가 마지막이었어....ㅠㅠ</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-wm1n5y-ProfilePhotoImage"></div>
																</div>
																batman2830<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-amcv0d"></span>
															</div>
															<div class="css-znoruf">
																좋아요 6<span class="css-1roze2l"></span>
																댓글 2
															</div>
														</div>
													</a>
												</li>
												<!-- list4 end -->
												<!-- list5 start -->
												<li class="css-ovtvwa">
												 <a title="'어벤져스 3 : 인피니티 워' 를 향하여" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdbGEq249">
												 	<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/vxCfjOg7ahc4YSgPaHFcXw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMmw2Y1dsb1pYWmtNSGhwYlhOaWRHWnlOVGRySW4wLmtxeWhLQ3ZLM0R1WnJ1Rk9hdDJCWmFxWmJ5R2tsVWw2bDl2a2VGTkZFTHc" class="css-1wh8by0"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/COWCS8WUfr63_6A_JG6A1w.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkkwYm1GMmNYcHRlSE4xYXpCNlltNW1kbUYySW4wLjRnTjYyQ0pNenBFRFY4cGtNUjFISmxORUZUSFlROTRfOXVycjVlQjhOUVE" class="css-1td8r7"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/GkXglQjT7W73o7shaeO2sw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlZrZDNKaWJHNXhkR0k0ZW5KemRtWTFaM2cwSW4wLkxmRVA1ekVBNHJpZzF6ZTNxQm5vdEhoYmowdHh2QnIyN2Q4MFJJODh0Vjg" class="css-1s3yg7r"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/FXsvMFeo8CuYMCVrumBCQw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkYwWW5Sd1ptVmtZV3B6ZDNWbWRuaHpibkZpSW4wLnBfQTZSSU5McVJvYjRBT0pOQXVuUm9nSk5wWG9EMG5uTFRKN0ZBWFRVbUU" class="css-eq8zfv"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/EqWBqxAc7IG-mq6AEmcgGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0poWVhoclpEaDJhRGx4ZDI1MGFYbHBhVzA0SW4wLlVYejktUmFobmdLcTNObHozNzNWWkVSNUpIWVJMRW1ya2ZWV0Vib0RQNWs" class="css-9tbwzq"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/TeNB5rUEKpdhA4qcTFW1Tg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM3AxY21WellUZDNjR1pyZG5jd04zbDFZMkYzSW4wLi1rNnVIOEtGdzFJX3dWcFliczJQZUVGX1lEVkpqUmJMTnh3eVlTZ2lkMkk" class="css-qnq1xc"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/CtY49AQ2tXjg3RjRNPm3Lw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlZpYkdsaWIzZDRlR1poWjJVMWQzUnhiMmh3SW4wLlpPamtsZWxxbHVIeUduNXB2bElDOXIwRmJxcDB1S3lrYW9YNTFYdHZVSFU" class="css-7tenyj"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/c-8Dd4ixe_Qp73R2El8Sww.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM2R2Y1dJNU9IQjBkWE53YTNaeFltYzRNR0Z1SW4wLjBsNE53VERVWWNLRTNJbEN0dTRSQVZNbVk1MFNoSWFVY0pNRFlZT2FiRzQ" class="css-58dqpu"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">'어벤져스 3 : 인피니티 워' 를 향하여</div>
															<div class="css-1on8oyq">인피니티 워 개봉 전에 순서대로 안 본 건 보고 본건 또 보고.</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-fq2b7v-ProfilePhotoImage"></div>
																</div>
																메이<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-amcv0d"></span>
															</div>
															<div class="css-znoruf">
																좋아요 2<span class="css-1roze2l"></span>
																댓글 0
															</div>
														</div>
													</a>
												</li>
												<!-- list5 end -->
												<!-- list6 start -->
												<li class="css-ovtvwa">
													<a title="어벤져스 에이지 오브 울트론" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdNvgV6o9">
														<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div class="css-1nh0fh5"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div class="css-1nh0fh5"></div>
																		<div class="css-1nh0fh5"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div class="css-1nh0fh5"></div>
																		<div class="css-36zyco"></div>
																		<div class="css-1nh0fh5"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div class="css-1nh0fh5"></div>
																		<div class="css-1nh0fh5"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">어벤져스 에이지 오브 울트론</div>
															<div class="css-1on8oyq"></div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-h6h0rq-ProfilePhotoImage"></div>
																</div>
																유영재
															</div>
															<div class="css-znoruf">
																좋아요 1<span class="css-1roze2l"></span>댓글 0
															</div>
														</div>
													</a>
												</li>
												<!-- list6 end -->
												<!-- list7 start -->
												<li class="css-ovtvwa">
													<a title="어벤져스" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdbpn4Q89">
													<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/MsWIIAE6RX8NotOabyB1hA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMlY1Y0d4MGFucDZNblJyZW1kMk1XYzFiSGxsSW4wLnFSSnRob0hIbThkeHpvc0tTUVdrN1p3TGtvbWVoMmhLWnN4TWNFdng2RjQ" class="css-1ui41lo"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-ksbc1o"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/EqWBqxAc7IG-mq6AEmcgGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0poWVhoclpEaDJhRGx4ZDI1MGFYbHBhVzA0SW4wLlVYejktUmFobmdLcTNObHozNzNWWkVSNUpIWVJMRW1ya2ZWV0Vib0RQNWs" class="css-v0er9f"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/9CFUfkASJCyodjpuh5xn0Q.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZzNNVFkzTWpJeU1UTTNOemd5TVRBaWZRLnZ0SUFoSms2MFRyZUpJWTFfUWxsUlNVV2RSTnZMQzdGQjJnTHd2S2dSTDg" class="css-u69y7i"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-qpso0m"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/ektdli_r3-HMbyGTg_SfMg.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXlMM04wYjNKbEwybHRZV2RsTHpFMk5UZzNNVFl5TkRrNU5UQXdOVFl6TkRjaWZRLlY1N1FkcGJlTVpzcUtremNCdWlVdXNXenh1emhmUFZnTjdoZXRMWlgwQTQ" class="css-1ci8rc6"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/EqWBqxAc7IG-mq6AEmcgGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0poWVhoclpEaDJhRGx4ZDI1MGFYbHBhVzA0SW4wLlVYejktUmFobmdLcTNObHozNzNWWkVSNUpIWVJMRW1ya2ZWV0Vib0RQNWs" class="css-9tbwzq"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">어벤져스</div>
															<div class="css-1on8oyq">어벤져스 시리즈</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-1cqa7vv-ProfilePhotoImage"></div>
																</div>
																나무<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQuNzcwNDYgMC41NjI0NTlDNS4yNDMyOCAtMC4xNTY0MzIgNi4zMTE0NyAtMC4xOTMwNyA2LjgzNTM1IDAuNDkyMTU1QzcuMTczMzcgMC45MzM3ODggNy43NzM4NSAxLjEwMTEzIDguMzAxODEgMC45MDAxMjFDOS4xMTk4IDAuNTg4MjA1IDEwLjAwNjIgMS4xNjc0OCAxMC4wMTQ0IDIuMDIxMDRDMTAuMDE5NSAyLjU2OTYxIDEwLjQwNTUgMy4wNDc4OCAxMC45NTM5IDMuMTg1NTJDMTEuODA0NiAzLjM5OTQxIDEyLjE3MDIgNC4zNzQ3NiAxMS42NjA2IDUuMDY4OUMxMS4zMzE4IDUuNTE2NDggMTEuMzUzMiA2LjEyMTQ5IDExLjcxMzcgNi41NDYyOUMxMi4yNzIzIDcuMjA0NzggMTEuOTc3MiA4LjIwMTkyIDExLjE0MzggOC40NzIyNUMxMC42MDY3IDguNjQ3NTIgMTAuMjU3NCA5LjE1MDU0IDEwLjI5MTEgOS42OTkxMkMxMC4zNDQyIDEwLjU0OTcgOS41MDE3NCAxMS4xODc0IDguNjYzMzIgMTAuOTMxOUM4LjEyMjA4IDEwLjc2NzYgNy41MzQ4OCAxMC45NzQ1IDcuMjI5NTQgMTEuNDM3OUM2Ljc1NjcyIDEyLjE1NjggNS42ODc1MSAxMi4xOTI1IDUuMTY0NjUgMTEuNTA4MkM0LjgyNjYzIDExLjA2NTYgNC4yMjYxNSAxMC44OTgzIDMuNjk4MTkgMTEuMTAwM0MyLjg4MDIgMTEuNDEyMiAxLjk5Mzc4IDEwLjgzMTkgMS45ODQ1OSA5Ljk4MDM0QzEuOTgwNTEgOS40Mjk3OCAxLjU5NTUxIDguOTUyNSAxLjA0NjEgOC44MTM4N0MwLjE5NTQyOCA4LjU5OTk5IC0wLjE3MDE2NiA3LjYyNjYxIDAuMzM5NDE5IDYuOTMyNDdDMC42NjgyNDkgNi40ODM5MSAwLjY0NjgwNCA1Ljg3NzkgMC4yODYzMTYgNS40NTMxQy0wLjI3MjI4NyA0Ljc5NDYxIDAuMDIyODQzIDMuNzk5NDUgMC44NTYxNTIgMy41MjcxNUMxLjM5MzMxIDMuMzUyODcgMS43NDM1OSAyLjg1MDgzIDEuNzA4ODYgMi4zMDEyN0MxLjY1NTc2IDEuNDUwNjggMi40OTgyNiAwLjgxMTk5MiAzLjMzNjY4IDEuMDY4NDZDMy44Nzc5MiAxLjIzMjgzIDQuNDY1MTIgMS4wMjU4OCA0Ljc3MDQ2IDAuNTYyNDU5WiIgZmlsbD0iIzBFMEYxMCIvPgogIDxwYXRoIGQ9Ik03LjY5NzMzIDIuNDUwMkw3LjI4NjEyIDcuNzkzOTJMNy4xNzc3NCA3Ljc5ODI4TDYuNDUyMjYgMy45Nzk3NUg1LjI2MTIzTDQuNjY1NTggNy44OTE1N0w0LjUzNTc1IDcuODk2OEwzLjk1MDk2IDMuOTc5NzVIMi41TDMuODEwMjcgOS43MTU4Mkw1LjMxNTI4IDkuNjE0MzlMNS44NDU3NCA1Ljk3MTdINS45NjQ5OEw2LjU2MDM1IDkuNTMwMTFMOC4wNzY1MSA5LjQyNzIzTDkuMTA1MTEgMi40NTAySDcuNjk3MzNaIiBmaWxsPSIjRkYwNTU4Ii8+Cjwvc3ZnPgo=" class="css-amcv0d"></span>
															</div>
															<div class="css-znoruf">
																좋아요 0<span class="css-1roze2l"></span>
																댓글 0
															</div>
														</div>
													</a>
												</li>
												<!-- list7 end -->
												<!--list8 start -->
												<li class="css-ovtvwa">
												<a title="어벤져스" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcdkwx4zxb">
													<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/EqWBqxAc7IG-mq6AEmcgGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0poWVhoclpEaDJhRGx4ZDI1MGFYbHBhVzA0SW4wLlVYejktUmFobmdLcTNObHozNzNWWkVSNUpIWVJMRW1ya2ZWV0Vib0RQNWs" class="css-v0er9f"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-ksbc1o"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/EqWBqxAc7IG-mq6AEmcgGA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM0poWVhoclpEaDJhRGx4ZDI1MGFYbHBhVzA0SW4wLlVYejktUmFobmdLcTNObHozNzNWWkVSNUpIWVJMRW1ya2ZWV0Vib0RQNWs" class="css-9tbwzq"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-qpso0m"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">어벤져스</div>
															<div class="css-1on8oyq">굿</div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-h6h0rq-ProfilePhotoImage"></div>
																</div>
																마미웡
															</div>
															<div class="css-znoruf">
																좋아요 0<span class="css-1roze2l"></span>
																댓글 0
															</div>
														</div>
													</a>
												</li>
											<!-- list8 end -->
											<!-- list9 start -->
												<li class="css-ovtvwa">
													<a title="어벤져스" class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/ko-KR/decks/gcd9rQmaKN">
													<div class="css-m7az3s">
															<div class="css-1sarkww">
																<div class="css-vc4xb">
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-qpso0m"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-14n47vs"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/AFqb2AEoSUIgydcRWxmuIw.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMM05zZERsMVlXZHlPV0UyZUdsaWRXTnhNMlk0SW4wLnRqUzhxcmwxUTVyWFRPZEdSTXJTel9BLS1BMnByMUlIZTJmbUtnT3BaVnc" class="css-ksbc1o"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																	<div class="css-11gwmvo">
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																		<div poster="https://an2-img.amz.wtchn.net/image/v2/VJvO958gZusxd3hUwDWSOA.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1UZ3dlREkxT0hFNE1DSmRMQ0p3SWpvaUwzWXhMMkp4YVhsNU1tdGxiSEJsY3paa1pubDVhbk42SW4wLjNnV2tTeHRBMzREWUNCNjhobElwa2d2UHo3R2ZPUW53cmkxMW9JZkRySGc" class="css-fbux7a"></div>
																	</div>
																</div>
															</div>
															<div class="css-11riikv">어벤져스</div>
															<div class="css-1on8oyq"></div>
															<div class="css-hsecj5">
																<div class="css-1j0k1vy">
																	<div class="css-1lv6qt6-ProfilePhotoImage"></div>
																</div>
																이정
															</div>
															<div class="css-znoruf">
																좋아요 0<span class="css-1roze2l"></span>
																댓글 0
															</div>
														</div>
													</a>
												</li>
									<!-- list9 end -->
											</ul>
											<div class="css-1sj9zzf">
												<button class="css-1d4r906-StylelessButton" id="collection_box">
													더보기
													<span src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuNSA5LjEwMDFMMTIgMTQuNjAwMUwxNy41IDkuMTAwMSIgc3Ryb2tlPSIjNzg3OTgyIiBzdHJva2Utd2lkdGg9IjEuNSIvPgo8L3N2Zz4K" width="24px" height="24px" class="css-cg0u6i"></span>
												</button>
											</div>
										</section>
									</div> 
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