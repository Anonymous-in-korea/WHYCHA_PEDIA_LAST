$(function () {
	//국가 & 장르 선택하는 모양만들어주는 스크립트
    $(".country").select2({
        maximumSelectionLength: 10,
    });
	//국가 & 장르 선택하는 모양만들어주는 스크립트
    
	//국가선택, 장르선택에 기본값 자동으로 없애주는 스크립트
    $("#nation_list").change(function() {
        if ($("#nation_list").val() != "") {
            $("#nation_list option[value='']").remove();
        }
    });
    $("#movGenre").change(function() {
        if ($("#movGenre").val() != "") {
            $("#movGenre option[value='']").remove();
        }
    });
	//국가선택, 장르선택에 기본값 자동으로 없애주는 스크립트
	
	//감독 & 배우 추가에 -버튼 누르면 빠지도록 하는 스크립트
	$(".minus_img").click(function() {
		var parentTr = $(this).closest("tr");
		parentTr.remove();
	});
	//감독 & 배우 추가에 -버튼 누르면 빠지도록 하는 스크립트
	
	
	
	// 갤러리 url input 추가하는 스크립트
	$("#gallery_plus").on("click", function() {
		
		let html = '<div class="resultFile gallery_url" style="display:block;">' +
					'<input type="text" name="movie_gallery_url" class="inBox1" placeholder="갤러리 url을 입력해주세요">' +
					'</div>';
		if ( $(".resultFile").length < 4 ) {
			$(".resultFile").after(html);
		}
		
	});

	// 갤러리 url input 추가하는 스크립트
	// 갤러리 url input 삭제하는 스크립트
	$("#gallery_minus").on("click", function() {
		
		let galleryUrls = $(".resultFile.gallery_url");
		if (galleryUrls.length > 1) {
			galleryUrls.last().remove();
		}
		
	});

	// 갤러리 url input 삭제하는 스크립트
	
	
	// 예고편 url input 추가하는 스크립트
	$("#trailer_plus").on("click", function() {
		
		let html = '<div class="vBox1 trailer_url" style="display:block;">' +
					'<div>' +
					'<input type="text" name="movie_trailer_url" placeholder="URL주소" class="vBox2" id="vu0" value=""/>' +
					'</div>' +
					'</div>';
		if ( $(".trailer_url").length < 4 ) {
			$(".trailer_url").after(html);
		}
		
	});
	// 예고편 url input 추가하는 스크립트
	// 예고편 url input 삭제하는 스크립트
	$("#trailer_minus").on("click", function() {
		
		let trailerUrls = $(".trailer_url");
		if (trailerUrls.length > 1) {
			trailerUrls.last().remove();
		}
		
	});
	// 예고편 url input 삭제하는 스크립트
	
	
	// 감독 & 배우 불러오기 ajax
	$("#search_button").click(function(key) {
		let searchData = {"searchJob":$("#searchJob").val(), "searchName":$("#searchName").val()};
		/* let searchData = jQuery("#searchData").serialize(); // serialize() : 입력된 모든Element(을)를 문자열의 데이터에 serialize 한다. */
		
		if ( $("#searchJob").val() == "" ) {
			alert("직업군을 선택해주세요"); $("#searchJob").focus();
		} else if ( $("#searchName").val().length < 1 ) {
			alert("감독 or 배우의 이름을 입력해주세요"); $("#searchName").focus();
		} else {
			$.ajax({
				url : "admin_artist_search",
				type : "post",
				data : searchData,
				success : function(data) {
					let htmlData = "";
					let director_id = data[0].director_id;
					let director_name = data[0].director_name;
					let director_post_url = data[0].director_post_url;
					let actor_id = data[0].actor_id;
					let actor_name = data[0].actor_name;
					let actor_post_url = data[0].actor_post_url;
					if ( data[0].director_name != null ) {
						htmlData += "<tr>";
						htmlData += "<td>";
						htmlData += "<div class='personBox'>";
						htmlData += "<img src='" + director_post_url + "' class='profile_img'>";
						htmlData += "<input type='text' name='director_name' style='width:30%; border:none; text-align:center;' value='" + director_name + "'>";
						htmlData += "<input type='hidden' name='director_id' value='" + director_id + "'>";
						htmlData += "<span style='margin-left:10%;'>감독</span>";
						htmlData += "<button type='button' class='minus_img' style='border:none; background:none; margin-left:10%;'>";
						htmlData += "<img src='/assets/img/minus_outline_icon.png' class='profile_minus'>";
						htmlData += "</button>";
						htmlData += "</div>";
						htmlData += "</td>";
						htmlData += "</tr>";
					} else if ( data[0].actor_name != null ) {
						htmlData += "<tr>";
						htmlData += "<td>";
						htmlData += "<div class='personBox'>";
						htmlData += "<img src='" + actor_post_url + "' class='profile_img'>";
						htmlData += "<input type='text' name='actor_name' style='width:30%; border:none; text-align:center;' value='" + actor_name + "'>";
						htmlData += "<input type='hidden' name='actor_id' value='" + actor_id + "'>";
						htmlData += "<span style='margin-left:10%;'>배우</span>";
						htmlData += "<button type='button' class='minus_img' style='border:none; background:none; margin-left:10%;'>";
						htmlData += "<img src='/assets/img/minus_outline_icon.png' class='profile_minus'>";
						htmlData += "</button>";
						htmlData += "</div>";
						htmlData += "</td>";
						htmlData += "</tr>";
					}
					$("#tbody").append(htmlData);
				},
				error : function() {
					alert("실패");
				}
			});
		}
	});//ajax
	// 감독 & 배우 불러오기 ajax
});