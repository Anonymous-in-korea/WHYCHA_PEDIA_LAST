$(function() {
	/* 로그인 창 띄우기 */
	$(".login_button").click(function() {
		if ( $(".css-14gy7wr-login").css("display") == "none" ) {
			$(".css-14gy7wr-login").show();
		}
	});
	/* 로그인 창 내리기 */
	$(".css-14gy7wr-login").click(function() {
		if ( $(".css-14gy7wr-login").css("display") != "none" ) {
			$(".css-14gy7wr-login").hide();
		}
	});
	/* 로그인 박스영역 클릭 시 창 내림 방지 */
	$(".css-1i2oi66-login").click(function(event) {
	  event.stopPropagation();
	});
});