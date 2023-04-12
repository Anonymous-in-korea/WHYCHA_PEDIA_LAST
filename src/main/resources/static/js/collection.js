$(function(){
/*                           컬렉션 등록 ajax                   */
	
	$("#collectionRegister").click(function(){
		var user_id = $("#ajaxUserId").text();
		var collectionTitle = $('#collectionTitle').val();
		var collectionDesc = $('#collectionDesc').val();
		var url=/collection/collectionInsert;
		$.ajax({
		    url: url,
			type: 'POST',
			data: {"user_id": parseInt(user_id),"collection_name":collectionTitle,"collection_desc":collectionDesc},
			dataType: 'json',
	 		success: function(response) {
	    		// 동적으로 생성하는 부분
	    		console.log("왔다");

		 	},//성공
		 	error: function() {
		    	alert("오류로 인해 확인이 되지 않았습니다. 다시 입력해주세요.");
		  	}//실패
		  	
		  	//정적으로 생성하는 부분
		  	
		  	
		  	
		  });//ajax끝
		
	});
	
	
/*                           컬렉션 등록 ajax 끝                  */	
	
	
	
	
});