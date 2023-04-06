$(function(){	
/*별점 추가 script*/ 
   $("#star_rating").change(function() {
    	var star_rate = $("#star_rating option:selected").val();
    	var movieVoId = $("#ajaxMyRate").text();
        alert(movieVoId); 
    	alert("selected_star_rate : " + star_rate);
    	$.ajax({
			type:"post",
			url:"/contents/MyStarRateChange",
			data:{"movie_id":parseInt(movieVoId),"star_rate":parseInt(star_rate)},
			dataType:"json",
			//contentType:'application/json',
			success:function(data){
				alert("성공");
			},
			error:function(){
				alert("오류로 인해 확인이 되지 않았습니다. 다시 입력해주세요.");
			}
		}); //ajax
	});
/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
 /*별점 그래프 script*/ 
 
 
 
 });

	                                  

		                                  