$(function(){
/*                           컬렉션 등록 ajax                   */
	
	$("#collectionRegister").click(function(){
		var user_id = $("#ajaxMemberId").text();
		var collectionTitle = $('#collectionTitle').val();
		var collectionDesc = $('#collectionDesc').val();
		var url="/collection/collectionInsert";
		console.log("여기");
		console.log($('#collectionTitle').val());
		console.log($('#collectionDesc').val());
		if(collectionTitle!=null && collectionDesc!=null){	
			$.ajax({
			    url: url,
				type: 'POST',
				data: {"user_id": parseInt(user_id),"collection_name":collectionTitle,"collection_desc":collectionDesc},
				dataType: 'json',
		 		success: function(response) {
					 console.log("왔다!");
		    		// 동적으로 생성하는 부분
		    		let html = ''; 
					html+='<li class="css-ovtvwa">'; 
					html+='<a title="'+response.collectionVo.collection_name+'"class="css-1f9m1s4-StylelessLocalLink eovgsd01" href="/collection/collection_detail_HY?collection_id='+response.collectionVo.id+'">';
					html+='<div class="css-m7az3s">';						
					html+='<div class="css-1sarkww">';								
					html+='<div class="css-vc4xb">';
					html+='<div class="css-11gwmvo">'; 
					html+='<div style="background: url()" class="css-hdhlfe"></div>';
					html+='</div>';						
					html+='<div class="css-11gwmvo">';								
					html+='<div style="background: url()" class="css-3a1vh6"></div>';
					html+='<div style="background: url()" class="css-1lebkd8"></div>'; 
					html+='</div>';
					html+='<div class="css-11gwmvo">';						
					html+='<div style="background: url())" class="css-qpso0m"></div>';								
					html+='<div style="background: url()" class="css-uifub2"></div>';
					html+='<div style="background: url()" class="css-1c7wnm0"></div>'; 
					html+='</div>';
					html+='<div class="css-11gwmvo">';						
					html+='<div style="background: url()" class="css-1ltg06n"></div>';								
					html+='<div style="background: url()" class="css-1pw0ykk"></div>';
					html+='</div>';
					html+='</div>';
					html+='</div>';
					html+='<div class="css-11riikv">'+response.collectionVo.collection_name+'</div>';
					html+='<div class="css-1on8oyq">'+response.collectionVo.collection_desc+'</div>';
					html+='<div class="css-hsecj5">';
					html+='<div class="css-1j0k1vy">';
					html+='<div style="background: url('+response.memberVo.user_pic_url+') center center / cover no-repeat;"  class="css-q29adr-ProfilePhotoImage"></div>';
					html+='</div>';
					html+=response.memberVo.user_name;
					html+='</div>';
					html+='<div class="css-znoruf">';
					html+='좋아요 0';
					html+='<span class="css-1roze2l"></span>';
					html+='댓글 0';
					html+='</div>';
					html+='</div>';
					html+='</a>';
					html+='</li>';
					$('.css-1ut4alo-VisualUl').append(html);				   
			 	},//성공
			 	error: function() {
			    	alert("오류로 인해 확인이 되지 않았습니다. 다시 입력해주세요.");
			  	}//실패
			  });//ajax끝
			 }else{//제목과 설명을 안적었을때
					 alert("컬렉션 제목을 입력해주세요"); 
			 }
	
		
	});
/*                           컬렉션 등록 ajax 끝                  */	
});