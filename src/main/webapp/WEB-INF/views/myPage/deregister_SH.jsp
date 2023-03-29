<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="../css/deregister_SH.css" rel="stylesheet" type="text/css">

	<script type="text/javascript">
	<!--탈퇴 팝업 창 띄우기/내리기 스크립트  -->
			$(function() {
				/* 탈퇴 창 띄우기 */
				$("#deregister_open_Btn").click(function() {
						if ( $(".deregister").css("display") == "none" ) { $(".deregister").show(); }
					});
				
				 /* 탈퇴 창 내리기 */
			 	$("#deregister_close_Btn").click(function() {
					if ( $(".deregister").css("display") != "none" ) { $(".deregister").hide(); }
				});
				/* 탈퇴 하기 - 탈퇴 이후 이메일 알람 창 띄우기*/
				$("#deregister_confirm_Btn").click(function(){
					if ( $(".deregister").css("display") != "none" ) { $(".deregister").hide(); }
 					if ( $(".deregister_alarm").css("display") == "none" ) { $(".deregister_alarm").show(); } 
				});
			});
			
	<!--탈퇴 이후 이메일 알람 창 스크립트  -->	
			$(function() {
				
				/* 탈퇴 알람 확인 버튼 누르기*/
				$("#deregister_alarm_confirm_Btn").click(function(){
					if ( $(".deregister_alarm").css("display") != "none" ) { $(".deregister_alarm").hide(); }
				});
			});
	</script>

<body>
<div class="deregister" class="css-14gy7wr">
	<div id="modal-container-juudK7OeZO-FSrtUJ4Ikf" class="css-rpyl6s">
		<div class="css-1yszxv0">
			<div class="css-f35o9y">
				<div class="css-1gkas1x-Grid e1689zdh0">
					<div class="css-1y901al-Row emmoxnt0">
						<div class="css-2djw8f">알림</div>
						<div class="css-148qwic">가입하신 메일로 회원 탈퇴 메일을 보내드리니 메일함을 확인해주세요.</div>
						<div size="2" class="css-gy4ioq">
							<button class="css-1gdw77k-StylelessButton" id="deregister_close_Btn">취소</button>
							<button class="css-sfhtz9-StylelessButton"  id="deregister_confirm_Btn">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-------------------------------------------------------------------탈퇴 이후 알림 창 팝업 띄우기 시작 ------------------------------------  -->
<div class="deregister_alarm" class="css-14gy7wr">
	<div id="modal-container-V8hwq5TF6sVExl6h1fnLU" class="css-rpyl6s">
		<div class="css-1yszxv0">
			<div class="css-f35o9y">
				<div class="css-1gkas1x-Grid e1689zdh0">
					<div class="css-1y901al-Row emmoxnt0">
						<div class="css-2djw8f">알림</div>
						<div class="css-148qwic">메일이 발송되었습니다.</div>
						<div size="1" class="css-gy4ioq">
							<button class="css-sfhtz9-StylelessButton" id="deregister_alarm_confirm_Btn">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>		
</body>
