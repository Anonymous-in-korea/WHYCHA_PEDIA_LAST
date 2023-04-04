$(function() {
	$("#loginBtn").click(function() {
		if ( $("#admin_email").val().length < 1 ) { alert("아이디를 입력해주세요"); $("#admin_email").val("").focus(); }
		else if ( $("#admin_pw").val().length < 1 ) { alert("비밀번호를 입력해주세요"); $("#admin_pw").val("").focus(); }
		else { login.submit(); }
	});
});