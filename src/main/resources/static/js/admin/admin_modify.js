$(function() {
	$("#admin_pw").change(function() {
		$("#pw_check").show();
	});
	
	let checkId = 0; let email_flag = 0; let pw_flag = 0; let pw_flag2 = 0; let name_flag = 0;
	let emailPattern = /^[\w\.-]{2,}@[\w\.-]+\.(com|net)$/;
	let pwPattern = /^(?=.*[A-Za-z])[A-Za-z\d\S]{6,}$/;
	let namePattern = /^[가-힣]{2,4}$/;
	
	$("#admin_email").on("keyup", function() {
		if ( $("#admin_email").val() == "" ) {
			$("#id_check_fail").css({"display":"none"});
			$("#input_id_error").css({"display":"none"});
			email_flag = 0;
		} else if ( !emailPattern.test( $("#admin_email").val() ) ) {
			$("#id_check_fail").css({"display":"none"});
			$("#input_id_error").css({"display":"block"});
			email_flag = 0;
		} else {
			$("#id_check_fail").css({"display":"none"});
			$("#input_id_error").css({"display":"none"});
			email_flag = 1;
		}
	});
	
	$("#admin_pw").on("keyup", function() {
		if ( $("#admin_pw").val() == "" ) {
			$("#input_pw_error").css({"display":"none"});
			pw_flag = 0;
		} else if ( !pwPattern.test( $("#admin_pw").val() ) ) {
			$("#input_pw_error").css({"display":"block"});
			pw_flag = 0;
		} else {
			$("#input_pw_error").css({"display":"none"});
			pw_flag = 1;
		}
	});
	
	$("#admin_pw2").on("keyup", function() {
		if ( $("#admin_pw2").val() == "" ) {
			$("#input_pw2_error").css({"display":"none"});
			pw_flag2 = 0;
		} else if ( $("#admin_pw").val() != ( $("#admin_pw2").val() ) ) {
			$("#input_pw2_error").css({"display":"block"});
			$("#input_pw2_success").css({"display":"none"});
			pw_flag2 = 0;
		} else {
			$("#input_pw2_error").css({"display":"none"});
			$("#input_pw2_success").css({"display":"block"});
			pw_flag2 = 1;
		}
	});

	$("#admin_name").on("keyup", function() {
		if ( $("#admin_name").val() == "" ) {
			$("#input_name_error").text("");
			name_flag = 0;
		} else if ( !namePattern.test( $("#admin_name").val() ) ) {
			$("#input_name_error").css({"display":"block"});
			name_flag = 0;
		} else {
			$("#input_name_error").css({"display":"none"});
			name_flag = 1;
		}
	});
	
	
	
	$("#admin_email_check").click(function() {
		alert("admin_email을 체크합니다");
		let formData = {"admin_email_check":$("#admin_email").val()};
		
		if ( $("#admin_email").val() < 1 ) {
			alert("관리자 아이디를 입력해주세요"); $("#admin_email").focus();
		} else if ( $("#input_id_error").css("display") != "none" ) {
			alert("관리자 아이디를 조건에 맞게 입력해주세요"); $("#admin_email").focus();
		} else {
			$.ajax({
				url : "admin_email_checkId",
				type : "post",
				data : formData,
				success : function(data) {
					alert("성공");
					if ( data == 1 ) {
						checkId = 1;
						$("#id_check_success").css({"display":"none"});
						$("#id_check_fail").css({"display":"block"});
					} else {
						checkId = 0;
						$("#id_check_success").css({"display":"block"});
						$("#id_check_fail").css({"display":"none"});
					}
				},
				error : function() {
					alert("실패");
					checkId = 0;
				}
			});
		}
	});
	
	
	if ( emailPattern.test( $("#admin_email").val() ) ) { email_flag = 1; checkId = 1; }
	if ( pwPattern.test( $("#admin_pw").val() ) ) { pw_flag = 1; pw_flag2 = 1; }
	if ( namePattern.test( $("#admin_name").val() ) ) { name_flag = 1; }
	
	
	$("#admin_modify").click(function() {
		if ( $("#admin_position").val() == "" ) {
			alert("관리자 권한을 설정해주세요"); $("#admin_position").focus();
		} else if ( email_flag == 0 ) {
			alert("email을 조건에 맞게 입력해주세요"); $("#admin_email").focus();
		} else if ( pw_flag == 0 ) {
			alert("비밀번호를 조건에 맞게 입력해주세요"); $("#admin_pw").focus();
		} else if ( pw_flag2 == 0 ) {
			alert("비밀번호를 일치하게 입력해주세요"); $("#admin_pw2").focus();
		} else if ( name_flag == 0 ) {
			alert("관리자 이름을 조건에 맞게 입력해주세요"); $("#admin_name").focus();
		} else {
			adminModify.submit();
		}
	});
});