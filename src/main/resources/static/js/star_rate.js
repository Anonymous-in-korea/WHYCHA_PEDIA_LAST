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
    console.log($('form').serializeArray());
    $.ajax({
			type: "post",
			url: "/bringMoreMovie",
			data: JSON.stringify({formData: $('form').serializeArray()}),
			contentType: "application/json",
			dataType: "json",
			success: function(response) {
			var $dynamicElement = $(response).find('#dynamic-element-id');	
			let movieList = response.movieList;
			let	my_star_rate= response.my_star_rate;
			let status= response.status;
			
			movieList.forEach(function(movieVo) {	
				 let releaseDate = new Date(movieVo.movie_release_date);
				 var year = releaseDate.getFullYear();
				 let html = '';
				 html+='<input type="hidden" name="movie_id_'+status+'" value="'+movieVo.id+'">';
				 html+='<li class="css-1pa5min">';
				 html+='<div class="css-jy9y9j">';
				 html+='<div class=" css-1ajznjz-StyledLazyLoadingImage ezcopuc0">';
				 html+='<a href="/contents/contents_SH?movie_id='+movieVo.id+'">';
				 html+='<img src="'+movieVo.movie_post_url+'" class="css-qhzw1o-StyledImg ezcopuc1" >';
				 html+='</a>';
				 html+='</div>';
				 html+='</div>';
				 html+='<div class="css-1frtrxg">';
				 html+='<h3 class="css-1a7e2fr">';
				 html+=movieVo.movie_kor_title;
				 html+='</h3>';
				 html+='<div class="css-tr3vhx">';
				 html+= year;
				 html+='<div class="css-1jlb6q">';
				 html+='<div class="css-yt2kjp">';
				 html+='<select class="star_rating" id="';
				 html+=movieVo.id
				 html+='" style="border:none; text-align:center; item-align:center;">';
				 html += '<option value="0" ' + (my_star_rate == 0 ? 'selected' : '') + '>별점평가하기</option>';
				 html += '<option value="0.5" ' + (my_star_rate == 0.5 ? 'selected' : '') + '>0.5점</option>';
				 html += '<option value="1.0" ' + (my_star_rate == 1 ? 'selected' : '') + '>1.0점</option>';
				 html += '<option value="1.5" ' + (my_star_rate == 1.5 ? 'selected' : '') + '>1.5점</option>';
				 html += '<option value="2.0" ' + (my_star_rate == 2 ? 'selected' : '') + '>2.0점</option>';
				 html += '<option value="2.5" ' + (my_star_rate == 2.5 ? 'selected' : '') + '>2.5점</option>';
				 html += '<option value="3.0" ' + (my_star_rate == 3 ? 'selected' : '') + '>3.0점</option>';
				 html += '<option value="3.5" ' + (my_star_rate == 3.5 ? 'selected' : '') + '>3.5점</option>';
				 html += '<option value="4.0" ' + (my_star_rate == 4 ? 'selected' : '') + '>4.0점</option>';
				 html += '<option value="4.5" ' + (my_star_rate == 4.5 ? 'selected' : '') + '>4.5점</option>';
				 html += '<option value="5.0" ' + (my_star_rate == 5 ? 'selected' : '') + '>5.0점</option>';
				 html += '</select>';
				 html += '</div>';
				 html += '<div class="star_container css-1mbuso5" style="cursor:pointer; width:240px; position:relative;">';
				 html += '<div style="width:100%; height:38px; margin:5px auto; position:absolute">';
				 html += '<img src="/images/star.png" class="star_left">';
				 html += '<img src="/images/star.png" class="star">';
				 html += '<img src="/images/star.png" class="star">';
				 html += '<img src="/images/star.png" class="star">';
				 html += '<img src="/images/star.png" class="star_right">';
				 html += '</div>';
				 html += '<div style="width:100%; height:38px; margin:5px auto; position:absolute">';
				 html += '<img src="/images/orange_star_half.png" class="orange_half_left star_rating1">';
				 html += '<img src="/images/orange_star.png" class="orange_star_left star_rating2" >';
				 html += '<img src="/images/orange_star_half.png" class="orange_half star_rating3" >';
				 html += '<img src="/images/orange_star.png" class="orange_star star_rating4" >';
				 html += '<img src="/images/orange_star_half.png" class="orange_half star_rating5" >';
				 html += '<img src="/images/orange_star.png" class="orange_star star_rating6" >';
				 html += '<img src="/images/orange_star_half.png" class="orange_half star_rating7" >';
				 html += '<img src="/images/orange_star.png" class="orange_star star_rating8" >';
				 html += '<img src="/images/orange_star_half.png" class="orange_half_right star_rating9" >';
				 html += '<img src="/images/orange_star.png" class="orange_star_right star_rating10" >';
				 html += '</div>';
				 html += '</div>';
				 html += '</div>';
				 html += '</div>';
				 html += '</li>';
				 $('ul.css-1nukiuq-VisualUl-ReviewUl').append(html);
				 status++;
			});//for문끝
			},
			error: function() {
				alert("ajax실패");
			}
		}); //ajax
 });



/*					   	영화 10개 더 불러오기	  끝                   */



/*                      별점 추가 script start                     */ 
	
//   $(".star_rating").on('change',function() {
//    	var star_rate = $(this).val();
//    	var movieVoId = $(this).attr('id');
//        console.log(star_rate);
//        console.log(movieVoId);
//    	$.ajax({
//			type:"post",
//			url:"/contents/MyStarRateChange",
//			data:{"movie_id":parseInt(movieVoId),"star_rate":parseFloat(star_rate)},
//			dataType:"json",
//			success:function(response){
//			},
//			error:function(){
//			}
//		}); //ajax
//	});
		
/*                      별점 추가  script end                       */

/*                      ajax 추가 된 별점 추가 script start                     */ 
	
// 이벤트 위임 사용
$('body').on('change', '.star_rating', function() {
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
		
/*                     ajax 추가 된 별점 추가  script end                       */  

/*							전체 function 끝                      */
});