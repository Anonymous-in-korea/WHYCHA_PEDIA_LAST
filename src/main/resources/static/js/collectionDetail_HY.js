$(function(){
	//좋아요 버튼 클릭 css변경
	$("#deckLike").click(function(){
		if($("#deckLike").hasClass("css-135c2b4-StylelessButton-StyledActionButton")){
			$("#deckLike").removeClass("css-135c2b4-StylelessButton-StyledActionButton");
			$("#deckLike").addClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
			$("#deckLike .fillTarget").attr("fill","#FEAE27");
		}else{
			$("#deckLike").addClass("css-135c2b4-StylelessButton-StyledActionButton");
			$("#deckLike").removeClass("css-3w1nnz-StylelessButton-StyledActionButton boing");
			$("#deckLike .fillTarget").attr("fill","#67686a");
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
    
	var already_check_empty = 0;
    // 댓글 입력 
    $(".css-1rllyvn").click(function(){
    	if($(".css-uv85g1").val().length == 0){
    		$(".css-uv85g1").focus();
			if(already_check_empty == 0){
				$(".css-uv85g1").after("<span class='css-comm'>한글자 이상 작성하셔야 댓글이 등록됩니다.</span>");
				already_check_empty = 1;
			}
    	} else	{
			$(".css-comm").remove();
			already_check_empty = 0;
		}		    	
    });
    
    //댓글 좋아요
    $(".css-1d8juai").click(function(){
		if($(this).hasClass("css-jpkqok")) {
			$(this).removeClass("css-jpkqok").addClass("css-1d8juai");
			$(this).find("img").attr("src","/images/like1.png");
		}else {
			$(this).removeClass("css-1d8juai").addClass("css-jpkqok");
			$(this).find("img").attr("src","/images/like2.png");
		}
	});
	
	//.. 클릭시 신고
//	$(".css-4ygot5").click(function(){
//		if($(this).find(".css-aa3xw")) 
//			$(this).find(".css-aa3xw").addClass("css-1pfl1eu").removeClass("css-aa3xw");
//	});
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