$(function() {
/*							전체 function 시작	                      */	


/*							카테고리 변경 시작	                      */		
 $('.css-ocecaw').on('click', function() {
    var category = $(this).find('.css-11axhrb').attr('id');
    $('input[name="category"]').val(category);
    console.log("왔다");
    categoryOptionStarRate.submit();
  });
  
/*							카테고리 변경 끝                         */	  

/*					   	영화 10개 더 불러오기	 시작                   */
$('#submit').on('click', function() {
    console.log("왔다");
    $.ajax({
			type:"post",
			url:"/bringMoreMovie",
			data:{formData: $('form').serializeArray()},
			dataType:"json",
			success:function(response){
				alert("ajax성공");
			},
			error:function(){
			}
		}); //ajax
 });


/*					   	영화 10개 더 불러오기	  끝                   */



/*                      별점 추가 script start                     */ 
	
   $(".star_rating").on('change',function() {
    	var star_rate = $(this).val();
    	var movieVoId = $(this).attr('id');
        console.log(star_rate);
        console.log(movieVoId);
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
		
/*                      별점 추가  script end                       */ 

/*							전체 function 끝                      */
});