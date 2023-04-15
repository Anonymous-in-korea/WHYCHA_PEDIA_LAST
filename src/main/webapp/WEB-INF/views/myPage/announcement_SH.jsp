<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="../css/announcement_SH.css" rel="stylesheet" type="text/css">
<body>
	<!-- 설정 톱니바퀴 팝업창 CSS -->
	<!--announcement 팝업 창 띄우기/내리기 스크립트  -->
	<script>
		$(function() {
			/* 설정 창 띄우기 */
			$("#announcement_open_Btn").click(function() {
				if ( $(".announcement").css("display") == "none" ) { $(".announcement").show(); }
			});
				
			/* 설정 창 내리기 */
			$("#announcement_close_Btn").click(function() {
				if ( $(".announcement").css("display") != "none" ) { $(".announcement").hide(); }
			});

			<!--기사(article) 상세 띄우기/접기  -->
			$('.css-10c763p-StylelessButton').click(function() {
				var li = $(this).parent();
				var div = $(this).next('.css-xrw3e9');
				var article = div.find('.css-1u4x0ui');
				if (li.hasClass('css-15gurup-StyledCollapseListItem')) {
					li.removeClass('css-15gurup-StyledCollapseListItem').addClass('css-7zhfhb');
					width=article.width()+100;
					height=article.height()+100;
					div.css('height', height);
				} else if (li.hasClass('css-7zhfhb')) {
					li.removeClass('css-7zhfhb').addClass('css-15gurup-StyledCollapseListItem');
					div.css('height', '0');
				}
			});
		});
	</script>
	<!-- 공지사항 팝업 열림! -->
	<div class="announcement">
		<div id="modal-container-thg3K61bbP9KCrJxZTi2q" class="css-rpyl6s">
			<div class="css-8kej5s">
				<header title="공지사항" class="css-ho1v2y-HeaderBarPrimitive">
					<div @click="notice_change" class="css-19pxr9t"
						id="announcement_close_Btn">
						<button aria-label="close"
							class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
					</div>
					<em class="css-5pjt39">공지사항</em>
					<div class="css-19pxr9t"></div>
				</header>
				<div class="css-1s8we4x">
					<ul class="css-10n5vg9-VisualUl ep5cwgq0">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
							<c:forEach items="${announcementList}" var="list" >
								<li class="css-15gurup-StyledCollapseListItem">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">${list.announcement_title}</div>
											<div class="css-189e8d8"><fmt:formatDate value="${list.announcement_date}" pattern="yyyy-MM-dd"/></div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
										<c:if test="${list.announcement_url}!=null">
											<a>
												<img src="${list.announcement_url}" style="max-width: 600px" />
											</a> 
										</c:if>
										${list.announcement_content}
										</article>
									</div>
								</li>
								</c:forEach>
							</div>
						</div>
						<div class="css-1thiwcu-StyledInfinityScroll eu826xw0"></div>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 공지사항 팝업 닫힘! -->
</body>
</html>