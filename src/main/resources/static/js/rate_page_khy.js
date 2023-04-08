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
	
	/* 별점 색깔변경 */
	$("#star_rating").change(function() {
		if ( $("#star_rating").val() == "0" ) { $("#star_rating1").hide(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
		} else if ( $("#star_rating").val() == "0.5" ) { $("#star_rating1").show(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "1.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "1.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").show(); $("#star_rating4").hide();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "2.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "2.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").show(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "3.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "3.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").show(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "4.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").hide();
        	
        } else if ( $("#star_rating").val() == "4.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
        	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").show(); $("#star_rating10").hide();
        	
        } else { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show(); $("#star_rating5").hide();
        	$("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").show();
        }
    });
	/* 별점 색깔변경 */
	
	/* 별점 색깔변경 (로그인 후 저장된 별점 불러올 때) */
	if ( $("#star_rating").val() == "0" ) { $("#star_rating1").hide(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
	} else if ( $("#star_rating").val() == "0.5" ) { $("#star_rating1").show(); $("#star_rating2").hide(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "1.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "1.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").show(); $("#star_rating4").hide();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "2.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "2.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").show(); $("#star_rating6").hide(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "3.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "3.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").show(); $("#star_rating8").hide(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "4.0" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").hide();
    	
    } else if ( $("#star_rating").val() == "4.5" ) { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show();
    	$("#star_rating5").hide(); $("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").show(); $("#star_rating10").hide();
    	
    } else { $("#star_rating1").hide(); $("#star_rating2").show(); $("#star_rating3").hide(); $("#star_rating4").show(); $("#star_rating5").hide();
    	$("#star_rating6").show(); $("#star_rating7").hide(); $("#star_rating8").show(); $("#star_rating9").hide(); $("#star_rating10").show();
    }
	/* 별점 색깔변경 */
		
});