$(function() {
	/*----------------------------------------------------------- 문제의 Script들 --------------------------------------------------------------*/
	
	/* 엔터키를 누르면 회원가입 실행 스크립트 */
	$("#join_pw").on("keypress", function(event) {
		if ( event.keyCode == 13 ) {
			$("#joinBtn").click();
		}
	});
	
	/* 페이지 URL넘겨주는 스크립트 */
	const url = window.location.href; // 현재 보고있는 페이지의 URL가져오기
	const baseUrl = "http://localhost:8000"; // 가져온 URL에서 제거할 부분
	const inputUrl = $("#redirectUrl"); // URL 결과물을 넣어줄 부분

	inputUrl.val(url.replace(baseUrl, ""));
	
	/*----------------------------------------------------------- 문제의 Script들 --------------------------------------------------------------*/
	
	
	
	/* 회원가입 창 띄우기 */
	$(".join_button").click(function() {
		if ( $(".css-14gy7wr-join").css("display") == "none" ) {
			$(".css-14gy7wr-join").show();
			$("#join_name").focus();
			$(".css-14gy7wr-login").hide();
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
	
	
	/* 로그인 버튼 눌렀을 때 start */
	$("#login_btn").click(function() {
		$(".css-14gy7wr-join").hide();
		$(".css-14gy7wr-login").show();
	});
	/* 로그인 버튼 눌렀을 때 end */
	
	
	/* 회원가입 스크립트 start */
	let name_flag = 0;
	let email_flag = 0;
	let pw_flag = 0;
	let namePattern = /^[가-힣]{1,10}$/;
	let emailPattern = /^[\w\.-]{2,}@[\w\.-]+\.(com|net)$/;
	let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;
	
	$("#join_name").on("keydown", function() {
		if ( !namePattern.test( $("#join_name").val() ) ) {
			$("#join_name_error").text("잘못된 입력입니다. 국문으로 한 글자 이상 입력해주세요.");
			$("#join_name_error").css({"color":"#FEAE27"});
			$("#join_name_box").removeClass("css-a4glo0");
			$("#join_name_box").addClass("css-a4glo0-active");
			name_flag = 0;
		} else {
			$("#join_name_error").text("정상입력되었습니다");
			$("#join_name_error").css({"color":"blue"});
			$("#join_name_box").removeClass("css-a4glo0-active");
			$("#join_name_box").addClass("css-a4glo0");
			name_flag = 1;
		}
	});

	$("#join_email").on("keydown", function() {
		if ( !emailPattern.test( $("#join_email").val() ) ) {
			$("#join_email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#join_email_error").css({"color":"#FEAE27"});
			$("#join_email_box").removeClass("css-a4glo0");
			$("#join_email_box").addClass("css-a4glo0-active");
			email_flag = 0;
		} else {
			$("#join_email_error").text("정상입력되었습니다");
			$("#join_email_error").css({"color":"blue"});
			$("#join_email_box").removeClass("css-a4glo0-active");
			$("#join_email_box").addClass("css-a4glo0");
			email_flag = 1;
		}
	});
	
	$("#join_pw").on("keydown", function() {
		if ( $("#join_pw").val() == "" ) {
			$("#join_pw_error").text("");
		} else if ( !pwPattern.test( $("#join_pw").val() ) ) {
			$("#join_pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#join_pw_error").css({"color":"#FEAE27"});
			$("#join_pw_box").removeClass("css-a4glo0");
			$("#join_pw_box").addClass("css-a4glo0-active");
			pw_flag = 0;
		} else {
			$("#join_pw_error").text("정상입력되었습니다");
			$("#join_pw_error").css({"color":"blue"});
			$("#join_pw_box").removeClass("css-a4glo0-active");
			$("#join_pw_box").addClass("css-a4glo0");
			pw_flag = 1;
		}
	});
	
	$("#joinBtn").click(function() {
		if ( name_flag == 1 && email_flag == 1 && pw_flag == 1 ) {
			join.submit();
		} else if ( name_flag == 0 && email_flag == 1 && pw_flag == 1 ) {
			$("#join_name_error").text("잘못된 입력입니다. 국문으로 한 글자 이상 입력해주세요.");
			$("#join_name_error").css({"color":"#FEAE27"});
			$("#join_name_box").removeClass("css-a4glo0");
			$("#join_name_box").addClass("css-a4glo0-active");
			$("#join_name_box").focus();
		} else if ( name_flag == 1 && email_flag == 0 && pw_flag == 1 ) {
			$("#email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#email_error").css({"color":"#FEAE27"});
			$("#email_box").removeClass("css-a4glo0");
			$("#email_box").addClass("css-a4glo0-active");
			$("#email_box").focus();
		} else if ( name_flag == 1 && email_flag == 1 && pw_flag == 0 ) {
			$("#pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#pw_error").css({"color":"#FEAE27"});
			$("#pw_box").removeClass("css-a4glo0");
			$("#pw_box").addClass("css-a4glo0-active");
			$("#pw_box").focus();
		} else {
			$("#join_name_error").text("잘못된 입력입니다. 국문으로 한 글자 이상 입력해주세요.");
			$("#join_name_error").css({"color":"#FEAE27"});
			$("#join_name_box").removeClass("css-a4glo0");
			$("#join_name_box").addClass("css-a4glo0-active");
			$("#join_name_box").focus();
			$("#email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#email_error").css({"color":"#FEAE27"});
			$("#email_box").removeClass("css-a4glo0");
			$("#email_box").addClass("css-a4glo0-active");
			$("#pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#pw_error").css({"color":"#FEAE27"});
			$("#pw_box").removeClass("css-a4glo0");
			$("#pw_box").addClass("css-a4glo0-active");
		}
	});
	/* 회원가입 스크립트 end */
});