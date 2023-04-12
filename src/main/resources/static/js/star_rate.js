$(function() {
/*							전체 function 시작	                      */	
	
/*                           정렬 카테고리 바꾸기 시작                   */
	  // id가 random, release, rate인 div 태그를 선택
	  let randomBtn = $('#random');
	  let releaseBtn = $('#release');
	  let rateBtn = $('#rate');
	
	  // span 태그 선택
	  let span = $('.css-q9kfw1');
	
	  // 클릭 이벤트 추가
	  randomBtn.on('click', function() {
	    span.text(randomBtn.text());
	  	fetchMovies('random');
	  });
	
	  releaseBtn.on('click', function() {
	    span.text(releaseBtn.text());
	    fetchMovies('release');
	  });
	
	  rateBtn.on('click', function() {
	    span.text(rateBtn.text());
	    fetchMovies('rate');
	  });
/*                           정렬 카테고리 바꾸기 끝                    */	  



/*                           ajax로 카테고리따라 내용 바꾸기 시작         */
	  function fetchMovies(category) {
		  var user_id = $("#ajaxUserId").text();	  
		  let url;
			  if (category === 'random') {
			    url = '/randomRate';
			  } else if (category === 'release') {
			    url = '/releaseRate';
			  } else if (category === 'rate') {
			    url = '/highRate';
			  } else {
			    return;
			  }
		$.ajax({
		    url: url,
			type: 'POST',
			data: {"user_id": parseInt(user_id)},
			dataType: 'json',
	 		success: function(response) {
				 
	    		// 동적으로 생성하는 부분
	    		console.log("왔다");
				
	    		// 동적으로 생성하는 부분
				for (let i = 0; i < response.movieRate.length; i++) {
				 let id='theNum'+i;
				 let movieList = $('#'+id);	
				 let movieVo = response.movieRate[i];
	      		 let html = ""; 
				 html+= ' "<li class="css-1pa5min" id="theNum' + i + '">'; 
				 html+=	'<div class="css-jy9y9j">';
				 html+=	'<div class=" css-1ajznjz-StyledLazyLoadingImage ezcopuc0"> ';						
				 html+= '<a href="/contents/contents_SH?movie_id=' + movieVo.id + '">';								
				 html+= '<img src="' + movieVo.movie_post_url + '"class=css-qhzw1o-StyledImg ezcopuc1">';
				 html+=	'</a>';									
				 html+=	'</div>';									
				 html+=	'</div>';								
				 html+=	'<div class="css-1frtrxg">';						
				 html+=	'<h3 class="css-1a7e2fr">' + movieVo.movie_kor_title + '</h3>';							
				 html+=	'<div class="css-tr3vhx">' +new Date(movieVo.movie_release_date).getFullYear()+'</div>';								
                 html+= '<div class="css-1jlb6q">';                                 
                 html+= '<div class="css-yt2kjp">';                                      
				 html+=	'<select class="star_rating" style="border:none; text-align:center; item-align:center;">';						
				 html+= '<option value="0" ' + (response.my_star_rate == 0 ? 'selected' : '') + '>별점평가하기</option>';
				 html+= '<option value="0.5" ' + (response.my_star_rate == 0.5 ? 'selected' : '') + '>0.5점</option>';
				 html+= '<option value="1.0" ' + (response.my_star_rate == 1.0 ? 'selected' : '') + '>1.0점</option>';
				 html+= '<option value="1.5" ' + (response.my_star_rate == 1.5 ? 'selected' : '') + '>1.5점</option>';
				 html+= '<option value="2.0" ' + (response.my_star_rate == 2.0 ? 'selected' : '') + '>2.0점</option>';
				 html+= '<option value="2.5" ' + (response.my_star_rate == 2.5 ? 'selected' : '') + '>2.5점</option>';
				 html+= '<option value="3.0" ' + (response.my_star_rate == 3.0 ? 'selected' : '') + '>3.0점</option>';
				 html+= '<option value="3.5" ' + (response.my_star_rate == 3.5 ? 'selected' : '') + '>3.5점</option>';
				 html+= '<option value="4.0" ' + (response.my_star_rate == 4.0 ? 'selected' : '') + '>4.0점</option>';
				 html+= '<option value="4.5" ' + (response.my_star_rate == 4.5 ? 'selected' : '') + '>4.5점</option>';
				 html+= '<option value="5.0" ' + (response.my_star_rate == 5.0 ? 'selected' : '') + '>5.0점</option>';											
				 html+=	'</select>';											
                 html+= '</div>';                                          
	             html+= '<div class="star_container" class="css-1mbuso5" style="cursor:pointer; width:240px; position:relative;">';                                          
                 html+= '<div style="width:100%; height:38px; margin:5px auto; position:absolute">';                                          	
                 html+= '<img src="/images/star.png" class="star_left">';                                          		
                 html+= '<img src="/images/star.png" class="star">';                                          		
                 html+= '<img src="/images/star.png" class="star">';                                          		
                 html+= '<img src="/images/star.png" class="star">';                                          		
                 html+= '<img src="/images/star.png" class="star_right">';                                          		
                 html+= '</div>';                                          	
                 html+= '<div style="width:100%; height:38px; margin:5px auto; position:absolute">';                     
                 html+= '<img src="/images/orange_star_half.png" class="orange_half_left star_rating1">';                                          		
                 html+= '<img src="/images/orange_star.png" class="orange_star_left star_rating2" >';                                          		
                 html+= '<img src="/images/orange_star_half.png" class="orange_half star_rating3" >';                                          		
                 html+= '<img src="/images/orange_star.png" class="orange_star star_rating4" >';                                          		
                 html+= '<img src="/images/orange_star_half.png" class="orange_half star_rating5" >';                                          		
                 html+= '<img src="/images/orange_star.png" class="orange_star star_rating6" >';                                          		
                 html+= '<img src="/images/orange_star_half.png" class="orange_half star_rating7" >';                                          		
                 html+= '<img src="/images/orange_star.png" class="orange_star star_rating8" >';                                          		
                 html+= '<img src="/images/orange_star_half.png" class="orange_half_right star_rating9" >';                                          		
                 html+= '<img src="/images/orange_star.png" class="orange_star_right star_rating10" >';                                          		
                 html+= '</div>';                                          	
                 html+= '</div>';                                        
                 html+= '</div>';                                      
				 html+=	'</div>';								
				 html+= '</li>';
				 movieList.html(html);			      
				}//for문
				
					
				// 정적으로 생성하는 부분	
				// response에 있는 ratedCount 값을 가져옴
  				const ratedCount = response.ratedCount;
   				// 새로운 countingHeader 생성
   				const countingHeader = $('<h2>').addClass('css-1kqxvpo-CountingHeader e104qqaq1').text(`총 평가 수: ${ratedCount}`);
    			// 기존 countingHeader element를 새로운 countingHeader로 대체
    			$('.e104qqaq1').replaceWith(countingHeader);
					
		 	},//성공
		 	error: function() {
		    	alert("오류로 인해 확인이 되지 않았습니다. 다시 입력해주세요.");
		  	}//실패
		  });//ajax끝
		}


/*                           ajax로 카테고리따라 내용 바꾸기 시작         */








/*							전체 function 끝                      */
});