$(function() {
	/* 회원가입 창 띄우기 */
	$(".join_button").click(function() {
		if ( $(".css-14gy7wr-join").css("display") == "none" ) {
			$(".css-14gy7wr-join").show();
		}
	});
	/* 회원가입 창 내리기 */
	$(".css-14gy7wr-join").click(function() {
		if ( $(".css-14gy7wr-join").css("display") != "none" ) {
			$(".css-14gy7wr-join").hide();
		}
	});
	/* 회원가입 박스영역 클릭 시 창 내림 방지 */
	$(".css-1i2oi66-join").click(function(event) {
	  event.stopPropagation();
	});
});