$(function(){
	var collection_id = $("#collectionId").text();
		//좋아요 버튼 클릭 css변경
		$("#deckLike").click(function(){
			if("${sessionId}"==""){
				$(".login_button").click();
			}else{
				if($("#deckLike").hasClass("css-135c2b4-StylelessButton-StyledActionButton")){
					$.ajax({
	   		        	url:"/collection_like",
	   		        	type:"post",
	   		        	dataType:"json",
	   		        	data:{
	   		        		"user_id":"${sessionId}",
	   		        		"collection_id":collection_id
	   		        		},
	   		        	success:function(data){
	   		        		$("#coll_like").text(data);
	   		        		alert("성공");
	   		        		$("#deckLike").removeClass("css-135c2b4-StylelessButton-StyledActionButton");
							$("#deckLike").addClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
							$("#deckLike .fillTarget").attr("fill","#FEAE27");
	   		        	},
	   		        	error:function(){
	   		        		alert("실패");
	   		        	}
	   		        }); //ajax
				}else{
					$.ajax({
	   		        	url:"/collection_like_delete",
	   		        	type:"post",
	   		        	dataType:"json",
	   		        	data:{
	   		        		"user_id":"${sessionId}",
	   		        		"collection_id":collection_id
	   		        		},
	   		        	success:function(data){
	   		        		$("#coll_like").text(data);
	   		        		alert("성공");
	   		        		$("#deckLike").addClass("css-135c2b4-StylelessButton-StyledActionButton");
							$("#deckLike").removeClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
							$("#deckLike .fillTarget").attr("fill","#67686a");
	   		        	},
	   		        	error:function(){
	   		        		alert("실패");
	   		        	}
	   		        }); //ajax
				}
			}
		});
		
		//댓글 클릭 스크롤 내리기
	    $('#scrollButton').on('click', function() {
	        // Calculate the offset top position of the target section
	        const targetOffsetTop = $('#comm').offset().top;

	        // Smoothly scroll down to the target section
	        $('html, body').animate({
	            scrollTop: targetOffsetTop
	        }, 1000); // The animation duration is 1000 milliseconds (1 second)
	    });
	    
		//<span class='css-comm'> 적용 check
		var already_check_empty = 0;
	    // 댓글 입력 
	    $(".css-1rllyvn").click(function(){
	    	var collection_comment_content = $(".css-uv85g1").val();
	    	if("${sessionId}"==""){
				$(".login_button").click();
			}else{
		    	if($(".css-uv85g1").val().length == 0){
		    		$(".css-uv85g1").focus();
					if(already_check_empty == 0){
						$(".css-uv85g1").after("<span class='css-comm'>한글자 이상 작성하셔야 댓글이 등록됩니다.</span>");
						already_check_empty = 1;
					}
		    	} else	{
					$(".css-comm").remove();
					already_check_empty = 0;
					$.ajax({
						url:"/collection_comment_insert",
	   		        	type:"post",
	   		        	dataType:"json",
	   		        	data:{
	   		        		"user_id":"${sessionId}",
	   		        		"collection_id":collection_id,
							"collection_comment_content" : collection_comment_content
	   		        		},
	   		        	success:function(data){
	   		        		alert("성공");
	   		        	},
	   		        	error:function(){
	   		        		alert("실패");
	   		        	}
					});//ajax
					$(".css-uv85g1").val("");
				}	
			}
	    }); //댓글입력
	    
		//.. 클릭시 신고
		$(".css-4ygot5").on("click", function(){
		    if($(this).find(".css-aa3xw")) { 
				$(this).find(".css-aa3xw").addClass("css-1pfl1eu").removeClass("css-aa3xw");
		    }
		});
		
		//부적절 신고 클릭시 알람
		$(document).on("click",".css-1pfl1eu",function(){
			$(this).addClass("css-aa3xw").removeClass("css-1pfl1eu"); 
			$("#declaration1").removeClass("css-pjxj5o").addClass("declaration");
		});
		

		//알람 취소 클릭시    
	    $(".css-1gdw77k-StylelessButton").click(function(){
			$("#declaration1").removeClass("declaration").addClass("css-pjxj5o");
		});
		
		//알람 확인 클릭시
		$(".css-sfhtz9-StylelessButton").click(function(){
			$("#declaration1").removeClass("declaration").addClass("css-pjxj5o");
		});
});