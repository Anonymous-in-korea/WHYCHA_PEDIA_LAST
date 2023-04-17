 $(function() {
	/*----------------------------------------------------------- 문제의 Script들 --------------------------------------------------------------*/
	
	/* 엔터키를 누르면 로그인 실행 스크립트 */
	$("#user_pw").on("keypress", function(event) {
		if ( event.keyCode == 13 ) {
			$("#loginBtn").click();
		}
	});
	
	/* 페이지 URL넘겨주는 스크립트 */
	const url = window.location.href;
	const baseUrl = "http://localhost:8000";
	const inputUrl = $("#redirectUrl");

	inputUrl.val(url.replace(baseUrl, ""));
	
	/* 실험해보기 */
	/*let URL = request.getRequestURL();
	alert(URL);
	
	$("#redirectUrl").val(request.getRequestURL().toString().replace(request.getRequestURI(),""));*/

	
	/*----------------------------------------------------------- 문제의 Script들 --------------------------------------------------------------*/



	/* 로그인 창 띄우기 */
	$(".login_button").click(function() {
		if ( $(".css-14gy7wr-login").css("display") == "none" ) {
			$(".css-14gy7wr-login").show();
			$("#user_email").focus();
			$(".css-14gy7wr-join").hide();
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
	
	
	
	
	/* 회원가입 버튼 눌렀을 때 start */
	$("#join_btn").click(function() {
		$(".css-14gy7wr-login").hide();
		$(".css-14gy7wr-join").show();
	});
	/* 회원가입 버튼 눌렀을 때 end */
	
	
	
	
	/* 로그인 스크립트 start */
	let email_flag = 0;
	let pw_flag = 0;
	let emailPattern = /^[\w\.-]{2,}@[\w\.-]+\.(com|net)$/;
	let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;
	
	$("#user_email").on("keydown", function() {
		if ( $("#user_email").val() == "" ) {
			$("#email_error").text("");
		} else if ( !emailPattern.test( $("#user_email").val() ) ) {
			$("#email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#email_error").css({"color":"#FEAE27"});
			$("#email_box").removeClass("css-a4glo0");
			$("#email_box").addClass("css-a4glo0-active");
			email_flag = 0;
		} else {
			$("#email_error").text("정상입력되었습니다");
			$("#email_error").css({"color":"blue"});
			$("#email_box").removeClass("css-a4glo0-active");
			$("#email_box").addClass("css-a4glo0");
			email_flag = 1;
		}
	});
	
	$("#user_pw").on("keydown", function() {
		if ( $("#user_pw").val() == "" ) {
			$("#pw_error").text("");
		} else if ( !pwPattern.test( $("#user_pw").val() ) ) {
			$("#pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#pw_error").css({"color":"#FEAE27"});
			$("#pw_box").removeClass("css-a4glo0");
			$("#pw_box").addClass("css-a4glo0-active");
			pw_flag = 0;
		} else {
			$("#pw_error").text("정상입력되었습니다");
			$("#pw_error").css({"color":"blue"});
			$("#pw_box").removeClass("css-a4glo0-active");
			$("#pw_box").addClass("css-a4glo0");
			pw_flag = 1;
		}
	});
	
	$("#loginBtn").click(function() {
		if ( email_flag == 1 && pw_flag == 1 ) {
			login.submit();
		} else if ( email_flag == 0 && pw_flag == 1 ) {
			$("#email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#email_error").css({"color":"#FEAE27"});
			$("#email_box").removeClass("css-a4glo0");
			$("#email_box").addClass("css-a4glo0-active");
			$("#email_box").focus();
		} else if ( email_flag == 1 && pw_flag == 0 ) {
			$("#pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#pw_error").css({"color":"#FEAE27"});
			$("#pw_box").removeClass("css-a4glo0");
			$("#pw_box").addClass("css-a4glo0-active");
			$("#pw_box").focus();
		} else {
			$("#email_error").text("잘못된 입력입니다. 이메일형식으로 입력해주세요.");
			$("#email_error").css({"color":"#FEAE27"});
			$("#email_box").removeClass("css-a4glo0");
			$("#email_box").addClass("css-a4glo0-active");
			$("#email_box").focus();
			$("#pw_error").text("잘못된 입력입니다. 영문자와 숫자를 사용하여 6자리 이상 입력해주세요.");
			$("#pw_error").css({"color":"#FEAE27"});
			$("#pw_box").removeClass("css-a4glo0");
			$("#pw_box").addClass("css-a4glo0-active");
		}
	});
	/* 로그인 스크립트 end */
});