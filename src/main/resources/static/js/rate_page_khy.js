$(function(){
	//팝업 페이지 켜기
     $(".css-1atn0az-StylelessButton").click(function(){
//    	alert("test")
 		$("#random_movie").addClass("css-14gy7wr").removeClass("css-pjxj5o");
     });
	//팝업 페이지 끄기	
	$("#random_movie").click(function() {
//		alert("test")
		$("#random_movie").addClass("css-pjxj5o").removeClass("css-14gy7wr");
	});
	
	// 렌덤 선택 클릭
	$(".css-11axhrb").click(function(){
		var o_span = $(".css-3cslbb")
		o_span.remove();
		var c_div = $(this).find(".css-0");
//		console.log(c_div);
		c_div.after("<span class='css-3cslbb'></span>");
	});
	
	$('body').on('change', '.star_rating', function() {
		if ( $(this).val() == "0" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating2").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating4").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
		} else if ( $(this).val() == "0.5" ) { $(this).parent().siblings(".star_container").find(".star_rating1").show(); 
			$(this).parent().siblings(".star_container").find(".star_rating2").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating4").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "1.0" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "1.5" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "2.0" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide();
			$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
			$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "2.5" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "3.0" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "3.5" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
	        $(this).parent().siblings(".star_container").find(".star_rating2").show(); 
	        $(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
	        $(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "4.0" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating6").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else if ( $(this).val() == "4.5" ) { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show();
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating6").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").hide();
        	
        } else { $(this).parent().siblings(".star_container").find(".star_rating1").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating2").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating3").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating4").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating5").hide();
        	$(this).parent().siblings(".star_container").find(".star_rating6").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating7").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating8").show(); 
        	$(this).parent().siblings(".star_container").find(".star_rating9").hide(); 
        	$(this).parent().siblings(".star_container").find(".star_rating10").show();
     }
    
	
	})
	
	
		
});