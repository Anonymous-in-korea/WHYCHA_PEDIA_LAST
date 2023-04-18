$(function(){	
	/*별점 추가 script start*/ 
   $("#star_rating_login").change(function() {
    	var star_rate = $("#star_rating_login option:selected").val();
    	var movieVoId = $("#ajaxMovieId").text();
      
    	$.ajax({
			type:"post",
			url:"/contents/MyStarRateChange",
			data:{"movie_id":parseInt(movieVoId),"star_rate":parseFloat(star_rate)},
			dataType:"json",
			success:function(response){
			},
			error:function(){
			}
		}); //ajax
	});
		
	/*별점 추가  script end*/ 
	
	/*코멘트 추가 or 수정  script start*/ 
	$("#comment_update").click(function() {
			console.log("코멘트 수정 or 등록");
			myCommentUpdate.submit();
		});
	/*코멘트 추가 or 수정  script end*/ 	 
	
	/*코멘트 삭제  script start*/ 
	$("#delete-btn").click(function() {
			console.log("코멘트 삭제");
			myCommentDelete.submit();
		});
	/*코멘트 삭제  script end*/ 	   
	
/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

});   


                            