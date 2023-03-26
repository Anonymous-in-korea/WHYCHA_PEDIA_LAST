<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 보고싶어요 팝업창 -->
<c:if test="${sessionId == null}">
<div class="wish_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
				</div>
			</header>
			<div class="css-1s8we4x">
				<div class="wish_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<span src="images/wishWatching.png" class="css-ntv7u"></span>
								</div>
								<div class="css-1q1aaw9">내 보관함에 작품을 담으려면 로그인이 필요해요.회원가입 혹은 로그인해주세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button class="css-ayvrdp-StylelessButton">회원가입</button>
								<button class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
<!-- 보고싶어요 팝업창 끝 --> 

<!-- 코멘트 팝업창 시작 --> 
<c:if test="${sessionId == null}">
<div class="comment_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="comment_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODc4NzgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTkuODU3IDE3Ljc4Nkw2IDIxdi00LjkxYy0xLjg0MS0xLjM3My0zLTMuMzY5LTMtNS41OUMzIDYuMzU4IDcuMDMgMyAxMiAzczkgMy4zNTggOSA3LjVjMCA0LjE0Mi00LjAzIDcuNS05IDcuNS0uNzM5IDAtMS40NTYtLjA3NC0yLjE0My0uMjE0eiIvPgo8L3N2Zz4K" 
										class="css-ntv7u2"></span>
								</div>
								<div class="css-1q1aaw9">지금 회원가입 혹은 로그인하시고, 경험한 감동을 기록해보세요.</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button class="css-ayvrdp-StylelessButton">회원가입</button>
								<button class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
<!-- 코멘트 팝업창 끝 --> 

<!-- 보는중 팝업창 시작 --> 
<c:if test="${sessionId == null}">
<div class="watch_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="watch_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<span src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzc4Nzg3OCI+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik02Ljc1IDkuNDg1aC0zYTEgMSAwIDAgMC0xIDF2MTBhMSAxIDAgMCAwIDEgMWgzYTEgMSAwIDAgMCAxLTF2LTEwYTEgMSAwIDAgMC0xLTFNMjAuNjU3IDguNTY2YTIuMzYzIDIuMzYzIDAgMCAwLTEuNzc5LS44MTNIMTYuNjJsLjE2NC0uNjI3Yy4xMzctLjUyOC4yMDEtMS4xMi4yMDEtMS44NjMgMC0xLjkxOS0xLjM3NS0yLjc3OC0yLjczOC0yLjc3OC0uNDQ0IDAtLjc2Ni4xMjMtLjk4Ni4zNzYtLjIuMjI3LS4yODIuNTMtLjI0My45MzVsLjAzIDEuMjMtMi45MDMgMi45NGMtLjU5My42LS44OTQgMS4yMy0uODk0IDEuODcydjkuNjQ3YS41LjUgMCAwIDAgLjUuNWg3LjY4N2EyLjM4OCAyLjM4OCAwIDAgMCAyLjM0OC0yLjA3bDEuNDQ1LTcuNDUyYTIuNDQgMi40NCAwIDAgMC0uNTc0LTEuODk3Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" 
										class="css-2ci6iq"></span>
									</div>
								<div class="css-1q1aaw9">로그인이 필요한 기능이에요. 지금 회원가입 혹은 로그인하고 공통의 취향을 나눠보세요</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button class="css-ayvrdp-StylelessButton">회원가입</button>
								<button class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
<!-- 보는중 팝업창 끝 --> 

<!-- 컬렉션 팝업창 로그인 전 시작 --> 
<c:if test="${sessionId == null}">
<div class="collection_pop_up_background" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
				</div>
				<div class="css-19pxr9t"></div>
			</header>
			<div class="css-1s8we4x">
				<div class="collection_content_box">
					<div class="css-blhbko">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<div class="css-l84u8">
									<span src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjUxMiIgaGVpZ2h0PSI1MTIiPjxwYXRoIGQ9Ik0yMy41NzYsNi40MjlsLTEuOTEtMy4xNzFMMTIsLjAzNiwyLjMzNCwzLjI1OCwuNDQyLDYuMzk3Yy0uNDc1LC43OTItLjU2MywxLjc0Mi0uMjQzLDIuNjA3LC4zMSwuODM5LC45NjQsMS40ODgsMS44LDEuNzkzbC0uMDA4LDkuODQ0LDEwLDMuMzMzLDEwLTMuMzMzLC4wMDgtOS44NDRjLjg0Ni0uMjk2LDEuNTA3LS45NDYsMS44MTktMS43ODgsLjMxNy0uODU3LC4yMjktMS43OTctLjI0Mi0yLjU4MlptLTUuNzM3LTIuMzM4bC01LjgzMSwxLjk0Ni01LjgzMy0xLjk1MSw1LjgyNS0xLjk0Miw1LjgzOSwxLjk0NlpNMi4xNTYsNy40MjhsMS4yOTItMi4xNDUsNy4wNDgsMi4zNTctMS41MjksMi41NDljLS4yMzksLjM5OC0uNzM1LC41ODEtMS4xNzMsLjQzNGwtNS4wODEtMS42OTNjLS4yOTctLjA5OS0uNTMtLjMyNC0uNjM5LS42MTgtLjEwOC0uMjkzLS4wNzktLjYxNiwuMDgyLS44ODNabTEuODQzLDQuMDM4bDMuMTYzLDEuMDU0YzEuMzQzLC40NDgsMi43OTItLjA4OCwzLjUyMS0xLjMwMmwuMzE2LS41MjYtLjAwNSwxMC44NDMtNy0yLjMzMywuMDA2LTcuNzM1Wm04Ljk5NCwxMC4wNjhsLjAwNS0xMC44NDksLjMxOSwuNTMyYy41NTYsLjkyOCwxLjUzMiwxLjQ1OSwyLjU2MSwxLjQ1OSwuMzE5LDAsLjY0My0uMDUxLC45Ni0uMTU3bDMuMTYxLTEuMDUzLS4wMDYsNy43MzQtNywyLjMzM1ptOC45NS0xMy4yMTZjLS4xMDUsLjI4NS0uMzMxLC41MDMtLjYxOSwuNTk5bC01LjExOCwxLjcwNmMtLjQzOCwuMTQ3LS45MzQtLjAzNS0xLjE3My0uNDM0bC0xLjUyNi0yLjU0Myw3LjA1MS0yLjM1MywxLjMwNSwyLjE2N2MuMTU2LC4yNiwuMTg2LC41NzMsLjA4LC44NThaIi8+PC9zdmc+Cg==" 
										class="css-collection_popup_img"></span>
								</div>
								<div class="css-1q1aaw9">로그인이 필요한 기능이에요. 지금 회원가입 혹은 로그인을 하셔서 영화를 당신의 콜렉션에 담아보세요</div>
							</div>
						</div>
					</div>
					<div class="css-y06mto">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<button class="css-ayvrdp-StylelessButton">회원가입</button>
								<button class="css-1828y09-StylelessButton">로그인</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
<!-- 컬렉션 팝업창 로그인전 끝 --> 
<!-- 컬렉션 팝업창 로그인 후 시작 --> 
<c:if test="${sessionId != null}">
<div class="css-collection_popUp" style="display:none;">
	<div id="modal-container-_UXspPLNadvpHIg80kJol" class="css-rpyl6s">
		<div class="css-ikkedy">
			<header title="" class="css-155l1de-HeaderBarPrimitive">
				<div class="css-19pxr9t">
					<button aria-label="close" class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
				</div>
				<div class="css-addMycollection">내 컬렉션에 추가</div>
				<div class="css-collection_addcheck">확인</div>
			</header>
			<div class="css-1s8we4x">
				<div class="css-oi2wld">
					<div class="css-blhbko2">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<ul class="css-pr4hr1-VisualUl-ArchivesByActionUl ei8r22x0">
								<li class="css-17543n0">
									<div class="css-11axhrb">
										<div class="css-1ciqeix">
											<input type="radio" name="chk_collection" value="새로운 영화" class="css-1j6t0vk-StylelessLocalLink-ArchivesActionListLink ei8r22x2">
											&nbsp;&nbsp;새로운 영화
											<br>
											<span class="css-collection_popup_span ei8r22x1">1개의 작품</span>
										</div>
										<div class="css-0"></div>
									</div>
								</li>
								<li class="css-17543n0">
									<div class="css-11axhrb">
										<div class="css-1ciqeix">
											<input type="radio" name="chk_collection" value="생각나는 작품" class="css-1j6t0vk-StylelessLocalLink-ArchivesActionListLink ei8r22x2">
											&nbsp;&nbsp;생각나는 작품
											<br>
											<span class="css-collection_popup_span ei8r22x1">3개의 작품</span>
										</div>
										<div class="css-0"></div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</c:if>
<!-- 컬렉션 팝업창 로그인 후 끝 --> 