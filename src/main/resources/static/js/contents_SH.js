 
/*별점 추가 script*/ 
/* $(function(){	
    $("#star_rating").change(function() {
    	var selected_star_rate = $("#star_rating option:selected").val();
    	alert("selected_star_rate : " + selected_star_rate);
    	$.ajax({
			type:"post",
			url:"/contents/movieStarRate",
			data:{"movie_id":parseInt(${movieVo.id}), "star_rate":parseInt(selected_star_rate)},
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
 /*});*/

		                                  