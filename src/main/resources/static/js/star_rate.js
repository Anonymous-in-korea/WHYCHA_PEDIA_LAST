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



/*                           카테고리따라 내용 바꾸기 시작         */
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
		
		}


/*                           카테고리따라 내용 바꾸기 시작         */








/*							전체 function 끝                      */
});