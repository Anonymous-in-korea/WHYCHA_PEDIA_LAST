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
	
   
	
/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

});   

                            