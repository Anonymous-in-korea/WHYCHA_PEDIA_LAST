<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="../css/logout_SH.css" rel="stylesheet" type="text/css">
<!--logout 팝업 창 띄우기/내리기 스크립트  -->
	<script type="text/javascript">
			$(function() {
				/* 로그아웃 창 띄우기 */
				$("#logout_open_Btn").click(function() {
						if ( $(".logout").css("display") == "none" ) { $(".logout").show(); }
					});
				
				 /* 로그아웃 창 내리기 */
			 	$("#logout_close_Btn").click(function() {
					if ( $(".logout").css("display") != "none" ) { $(".logout").hide(); }
				});
			 	/* 로그아웃 하기 */
				$("#logout_confirm_Btn").click(function(){
					location.href="/";
				});
			});
</script>


<body>
  <div class="logout" class="css-14gy7wr">
	<div id="modal-container-sysdvcwOmpJLuL-8Hk19a" class="css-rpyl6s">
		<div class="css-1yszxv0">
			<div class="css-f35o9y">
				<div class="css-1gkas1x-Grid e1689zdh0">
					<div class="css-1y901al-Row emmoxnt0">
						<div class="css-2djw8f">알림</div>
						<div class="css-148qwic">로그아웃 하시겠어요?</div>
						<div size="2" class="css-gy4ioq">
							<button class="css-1gdw77k-StylelessButton" id="logout_close_Btn">취소</button>
							<button class="css-sfhtz9-StylelessButton" id="logout_confirm_Btn">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  </div>		
</body>
