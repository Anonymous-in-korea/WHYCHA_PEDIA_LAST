<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>관리자_컨텐츠_등록페이지</title>
	    
	    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    
	    <link href="/css/admin/styles.css" rel="stylesheet" />
	    <link href="/css/admin/3_contents/movie/movie_write.css" rel="stylesheet" />
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet"/>
	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
	    <script src="https://unpkg.com/vue@3"></script>
	    
	    <!-- 이거 side_nav 작동하는 script임 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<!-- 이거 side_nav 작동하는 script임 -->
		
		<script src="/js/admin/admin_logout.js"></script>
		<script src="/js/admin/admin_movie_create_modify.js"></script>
		
	    <script>
	    	$(function() {
	    		$(".modifyBtn").click(function() {
	    			/* alert("수정된 영화정보를 등록합니다"); */
	    			movieModify.submit();
	    		});
	    	});
	    </script>
	</head>
	<body class="sb-nav-fixed">
		<div id="layoutSidenav">
		    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                	<c:if test="${ adminSessionEmail != null }">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
                	<c:if test="${ adminSessionEmail == null }">
                	<a href="/admin/whycha_pedia_admin_login"><img src="/images/no1_WHYCHA_NONBACK.png" class="logo"></a>
                	</c:if>
					<%@ include file="../fragment/sidefooter.jsp" %>
					<%@ include file="../fragment/sidenav.jsp" %>
                </nav>
            </div>

		    <div id="layoutSidenav_content">
		        <main>
		            <div class="container-fluid px-4">
		                <h1 class="mt-4">영화</h1>
		                <form action="/admin/3_contents/movie_modify" method="post" name="movieModify">
		                <input type="hidden" name="id" value="${ movieVo.id }">
		                <div class="card">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        영화
		                    </div>
		                    <div class="card-body">
		                        <div id="inputbox">
		                            &nbsp;&nbsp;&nbsp;기본정보
		                            <div>
		                                <input type="text" name="movie_kor_title" placeholder="표기할 영화제목" class="inBox1" id="movTitle" value="${ movieVo.movie_kor_title }" required/>
		                            </div>
		                         
		                            <div>
		                                <input type="text" name="movie_original_title" placeholder="원제" class="inBox1" id="movTitleOrg" value="${ movieVo.movie_original_title }"/>
		                            </div>
		                         
		                            <div>
		                                <input type="text" name="movie_release_date" placeholder="개봉 날짜 (YYYY-MM-DD)" class="inBox1" id="movMakingDate" value="${ movieVo.movie_release_date }" required/>
		                            </div>
		                         
		                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; height: 50px; margin: 0 0 0 10px;">
			                            <select multiple="multiple" name="name_kor" id="name_kor" class="country" style="width: 100%; height: 50px; border: 1px solid rgb(255, 255, 255);">
			                            	<option value="" selected>국가선택</option>
			                            	<c:if test="${ adminCountryView != null }">
			                            	<c:forEach items="${ adminCountryView }" var="country">
		                                    <option value="1" <c:if test="${fn:contains( country.name_kor, '아프가니스탄' )}">selected</c:if> >아프가니스탄</option>
		                                    <option value="2" <c:if test="${fn:contains( country.name_kor, '올란드 제도' )}">selected</c:if> >올란드 제도</option>
		                                    <option value="3" <c:if test="${fn:contains( country.name_kor, '알바니아' )}">selected</c:if> >알바니아</option>
		                                    <option value="4" <c:if test="${fn:contains( country.name_kor, '알제리' )}">selected</c:if> >알제리</option>
		                                    <option value="5" <c:if test="${fn:contains( country.name_kor, '아메리칸사모아' )}">selected</c:if> >아메리칸사모아</option>
		                                    <option value="6" <c:if test="${fn:contains( country.name_kor, '안도라' )}">selected</c:if> >안도라</option>
		                                    <option value="7" <c:if test="${fn:contains( country.name_kor, '앙골라' )}">selected</c:if> >앙골라</option>
		                                    <option value="8" <c:if test="${fn:contains( country.name_kor, '앵귈라' )}">selected</c:if> >앵귈라</option>
		                                    <option value="9" <c:if test="${fn:contains( country.name_kor, '남극' )}">selected</c:if> >남극</option>
		                                    <option value="10" <c:if test="${fn:contains( country.name_kor, '앤티가 바부다' )}">selected</c:if> >앤티가 바부다</option>
		                                    <option value="11" <c:if test="${fn:contains( country.name_kor, '아르헨티나' )}">selected</c:if> >아르헨티나</option>
		                                    <option value="12" <c:if test="${fn:contains( country.name_kor, '아르메니아' )}">selected</c:if> >아르메니아</option>
		                                    <option value="13" <c:if test="${fn:contains( country.name_kor, '아루바' )}">selected</c:if> >아루바</option>
		                                    <option value="14" <c:if test="${fn:contains( country.name_kor, '오스트레일리아' )}">selected</c:if> >오스트레일리아</option>
		                                    <option value="15" <c:if test="${fn:contains( country.name_kor, '오스트리아' )}">selected</c:if> >오스트리아</option>
		                                    <option value="16" <c:if test="${fn:contains( country.name_kor, '아제르바이잔' )}">selected</c:if> >아제르바이잔</option>
		                                    <option value="17" <c:if test="${fn:contains( country.name_kor, '바하마' )}">selected</c:if> >바하마</option>
		                                    <option value="18" <c:if test="${fn:contains( country.name_kor, '바레인' )}">selected</c:if> >바레인</option>
		                                    <option value="19" <c:if test="${fn:contains( country.name_kor, '방글라데시' )}">selected</c:if> >방글라데시</option>
		                                    <option value="20" <c:if test="${fn:contains( country.name_kor, '바베이도스' )}">selected</c:if> >바베이도스</option>
		                                    <option value="21" <c:if test="${fn:contains( country.name_kor, '벨라루스' )}">selected</c:if> >벨라루스</option>
		                                    <option value="22" <c:if test="${fn:contains( country.name_kor, '벨기에' )}">selected</c:if> >벨기에</option>
		                                    <option value="23" <c:if test="${fn:contains( country.name_kor, '벨리즈' )}">selected</c:if> >벨리즈</option>
		                                    <option value="24" <c:if test="${fn:contains( country.name_kor, '베냉' )}">selected</c:if> >베냉</option>
		                                    <option value="25" <c:if test="${fn:contains( country.name_kor, '버뮤다' )}">selected</c:if> >버뮤다</option>
		                                    <option value="26" <c:if test="${fn:contains( country.name_kor, '부탄' )}">selected</c:if> >부탄</option>
		                                    <option value="27" <c:if test="${fn:contains( country.name_kor, '볼리비아' )}">selected</c:if> >볼리비아</option>
		                                    <option value="28" <c:if test="${fn:contains( country.name_kor, '보스니아 헤르체고비나' )}">selected</c:if> >보스니아 헤르체고비나</option>
		                                    <option value="29" <c:if test="${fn:contains( country.name_kor, '보츠와나' )}">selected</c:if> >보츠와나</option>
		                                    <option value="30" <c:if test="${fn:contains( country.name_kor, '부베 섬' )}">selected</c:if> >부베 섬</option>
		                                    <option value="31" <c:if test="${fn:contains( country.name_kor, '브라질' )}">selected</c:if> >브라질</option>
		                                    <option value="32" <c:if test="${fn:contains( country.name_kor, '영국령 인도양 지역' )}">selected</c:if> >영국령 인도양 지역</option>
		                                    <option value="33" <c:if test="${fn:contains( country.name_kor, '브루나이' )}">selected</c:if> >브루나이</option>
		                                    <option value="34" <c:if test="${fn:contains( country.name_kor, '불가리아' )}">selected</c:if> >불가리아</option>
		                                    <option value="35" <c:if test="${fn:contains( country.name_kor, '부르키나 파소' )}">selected</c:if> >부르키나 파소</option>
		                                    <option value="36" <c:if test="${fn:contains( country.name_kor, '부룬디' )}">selected</c:if> >부룬디</option>
		                                    <option value="37" <c:if test="${fn:contains( country.name_kor, '캄보디아' )}">selected</c:if> >캄보디아</option>
		                                    <option value="38" <c:if test="${fn:contains( country.name_kor, '카메룬' )}">selected</c:if> >카메룬</option>
		                                    <option value="39" <c:if test="${fn:contains( country.name_kor, '캐나다' )}">selected</c:if> >캐나다</option>
		                                    <option value="40" <c:if test="${fn:contains( country.name_kor, '카보베르데' )}">selected</c:if> >카보베르데</option>
		                                    <option value="41" <c:if test="${fn:contains( country.name_kor, '케이맨 제도' )}">selected</c:if> >케이맨 제도</option>
		                                    <option value="42" <c:if test="${fn:contains( country.name_kor, '중앙아프리카 공화국' )}">selected</c:if> >중앙아프리카 공화국</option>
		                                    <option value="43" <c:if test="${fn:contains( country.name_kor, '차드' )}">selected</c:if> >차드</option>
		                                    <option value="44" <c:if test="${fn:contains( country.name_kor, '칠레' )}">selected</c:if> >칠레</option>
		                                    <option value="45" <c:if test="${fn:contains( country.name_kor, '중국' )}">selected</c:if> >중국</option>
		                                    <option value="46" <c:if test="${fn:contains( country.name_kor, '크리스마스섬' )}">selected</c:if> >크리스마스섬</option>
		                                    <option value="47" <c:if test="${fn:contains( country.name_kor, '코코스 제도' )}">selected</c:if> >코코스 제도</option>
		                                    <option value="48" <c:if test="${fn:contains( country.name_kor, '콜롬비아' )}">selected</c:if> >콜롬비아</option>
		                                    <option value="49" <c:if test="${fn:contains( country.name_kor, '코모로' )}">selected</c:if> >코모로</option>
		                                    <option value="50" <c:if test="${fn:contains( country.name_kor, '콩고 민주 공화국' )}">selected</c:if> >콩고 민주 공화국</option>
		                                    <option value="51" <c:if test="${fn:contains( country.name_kor, '쿡 제도' )}">selected</c:if> >쿡 제도</option>
		                                    <option value="52" <c:if test="${fn:contains( country.name_kor, '코스타리카' )}">selected</c:if> >코스타리카</option>
		                                    <option value="53" <c:if test="${fn:contains( country.name_kor, '코트디부아르' )}">selected</c:if> >코트디부아르</option>
		                                    <option value="54" <c:if test="${fn:contains( country.name_kor, '크로아티아' )}">selected</c:if> >크로아티아</option>
		                                    <option value="55" <c:if test="${fn:contains( country.name_kor, '쿠바' )}">selected</c:if> >쿠바</option>
		                                    <option value="56" <c:if test="${fn:contains( country.name_kor, '키프로스' )}">selected</c:if> >키프로스</option>
		                                    <option value="57" <c:if test="${fn:contains( country.name_kor, '체코' )}">selected</c:if> >체코</option>
		                                    <option value="58" <c:if test="${fn:contains( country.name_kor, '덴마크' )}">selected</c:if> >덴마크</option>
		                                    <option value="59" <c:if test="${fn:contains( country.name_kor, '지부티' )}">selected</c:if> >지부티</option>
		                                    <option value="60" <c:if test="${fn:contains( country.name_kor, '도미니카 연방' )}">selected</c:if> >도미니카 연방</option>
		                                    <option value="61" <c:if test="${fn:contains( country.name_kor, '도미니카 공화국' )}">selected</c:if> >도미니카 공화국</option>
		                                    <option value="62" <c:if test="${fn:contains( country.name_kor, '에콰도르' )}">selected</c:if> >에콰도르</option>
		                                    <option value="63" <c:if test="${fn:contains( country.name_kor, '이집트' )}">selected</c:if> >이집트</option>
		                                    <option value="64" <c:if test="${fn:contains( country.name_kor, '엘살바도르' )}">selected</c:if> >엘살바도르</option>
		                                    <option value="65" <c:if test="${fn:contains( country.name_kor, '적도 기니' )}">selected</c:if> >적도 기니</option>
		                                    <option value="66" <c:if test="${fn:contains( country.name_kor, '에리트레아' )}">selected</c:if> >에리트레아</option>
		                                    <option value="67" <c:if test="${fn:contains( country.name_kor, '에스토니아' )}">selected</c:if> >에스토니아</option>
		                                    <option value="68" <c:if test="${fn:contains( country.name_kor, '에티오피아' )}">selected</c:if> >에티오피아</option>
		                                    <option value="69" <c:if test="${fn:contains( country.name_kor, '포클랜드 제도' )}">selected</c:if> >포클랜드 제도</option>
		                                    <option value="70" <c:if test="${fn:contains( country.name_kor, '페로 제도' )}">selected</c:if> >페로 제도</option>
		                                    <option value="71" <c:if test="${fn:contains( country.name_kor, '피지' )}">selected</c:if> >피지</option>
		                                    <option value="72" <c:if test="${fn:contains( country.name_kor, '핀란드' )}">selected</c:if> >핀란드</option>
		                                    <option value="73" <c:if test="${fn:contains( country.name_kor, '프랑스' )}">selected</c:if> >프랑스</option>
		                                    <option value="74" <c:if test="${fn:contains( country.name_kor, '프랑스령 기아나' )}">selected</c:if> >프랑스령 기아나</option>
		                                    <option value="75" <c:if test="${fn:contains( country.name_kor, '프랑스령 폴리네시아' )}">selected</c:if> >프랑스령 폴리네시아</option>
		                                    <option value="76" <c:if test="${fn:contains( country.name_kor, '프랑스령 남방 및 남극' )}">selected</c:if> >프랑스령 남방 및 남극</option>
		                                    <option value="77" <c:if test="${fn:contains( country.name_kor, '가봉' )}">selected</c:if> >가봉</option>
		                                    <option value="78" <c:if test="${fn:contains( country.name_kor, '감비아' )}">selected</c:if> >감비아</option>
		                                    <option value="79" <c:if test="${fn:contains( country.name_kor, '조지아' )}">selected</c:if> >조지아</option>
		                                    <option value="80" <c:if test="${fn:contains( country.name_kor, '독일' )}">selected</c:if> >독일</option>
		                                    <option value="81" <c:if test="${fn:contains( country.name_kor, '가나' )}">selected</c:if> >가나</option>
		                                    <option value="82" <c:if test="${fn:contains( country.name_kor, '지브롤터' )}">selected</c:if> >지브롤터</option>
		                                    <option value="83" <c:if test="${fn:contains( country.name_kor, '그리스' )}">selected</c:if> >그리스</option>
		                                    <option value="84" <c:if test="${fn:contains( country.name_kor, '그린란드' )}">selected</c:if> >그린란드</option>
		                                    <option value="85" <c:if test="${fn:contains( country.name_kor, '그레나다' )}">selected</c:if> >그레나다</option>
		                                    <option value="86" <c:if test="${fn:contains( country.name_kor, '과들루프' )}">selected</c:if> >과들루프</option>
		                                    <option value="87" <c:if test="${fn:contains( country.name_kor, '괌' )}">selected</c:if> >괌</option>
		                                    <option value="88" <c:if test="${fn:contains( country.name_kor, '과테말라' )}">selected</c:if> >과테말라</option>
		                                    <option value="89" <c:if test="${fn:contains( country.name_kor, '건지' )}">selected</c:if> >건지</option>
		                                    <option value="90" <c:if test="${fn:contains( country.name_kor, '기니' )}">selected</c:if> >기니</option>
		                                    <option value="91" <c:if test="${fn:contains( country.name_kor, '기니비사우' )}">selected</c:if> >기니비사우</option>
		                                    <option value="92" <c:if test="${fn:contains( country.name_kor, '가이아나' )}">selected</c:if> >가이아나</option>
		                                    <option value="93" <c:if test="${fn:contains( country.name_kor, '아이티' )}">selected</c:if> >아이티</option>
		                                    <option value="94" <c:if test="${fn:contains( country.name_kor, '허드 맥도널드 제도' )}">selected</c:if> >허드 맥도널드 제도</option>
		                                    <option value="95" <c:if test="${fn:contains( country.name_kor, '바티칸 시국' )}">selected</c:if> >바티칸 시국</option>
		                                    <option value="96" <c:if test="${fn:contains( country.name_kor, '온두라스' )}">selected</c:if> >온두라스</option>
		                                    <option value="97" <c:if test="${fn:contains( country.name_kor, '홍콩' )}">selected</c:if> >홍콩</option>
		                                    <option value="98" <c:if test="${fn:contains( country.name_kor, '헝가리' )}">selected</c:if> >헝가리</option>
		                                    <option value="99" <c:if test="${fn:contains( country.name_kor, '아이슬란드' )}">selected</c:if> >아이슬란드</option>
		                                    <option value="100" <c:if test="${fn:contains( country.name_kor, '인도' )}">selected</c:if> >인도</option>
		                                    <option value="101" <c:if test="${fn:contains( country.name_kor, '인도네시아' )}">selected</c:if> >인도네시아</option>
		                                    <option value="102" <c:if test="${fn:contains( country.name_kor, '이슬람 공화국' )}">selected</c:if> >이슬람 공화국</option>
		                                    <option value="103" <c:if test="${fn:contains( country.name_kor, '이라크' )}">selected</c:if> >이라크</option>
		                                    <option value="104" <c:if test="${fn:contains( country.name_kor, '아일랜드섬' )}">selected</c:if> >아일랜드섬</option>
		                                    <option value="105" <c:if test="${fn:contains( country.name_kor, '맨섬' )}">selected</c:if> >맨섬</option>
		                                    <option value="106" <c:if test="${fn:contains( country.name_kor, '이스라엘' )}">selected</c:if> >이스라엘</option>
		                                    <option value="107" <c:if test="${fn:contains( country.name_kor, '이탈리아' )}">selected</c:if> >이탈리아</option>
		                                    <option value="108" <c:if test="${fn:contains( country.name_kor, '자메이카' )}">selected</c:if> >자메이카</option>
		                                    <option value="109" <c:if test="${fn:contains( country.name_kor, '일본' )}">selected</c:if> >일본</option>
		                                    <option value="110" <c:if test="${fn:contains( country.name_kor, '저지섬' )}">selected</c:if> >저지섬</option>
		                                    <option value="111" <c:if test="${fn:contains( country.name_kor, '요르단' )}">selected</c:if> >요르단</option>
		                                    <option value="112" <c:if test="${fn:contains( country.name_kor, '카자흐스탄' )}">selected</c:if> >카자흐스탄</option>
		                                    <option value="113" <c:if test="${fn:contains( country.name_kor, '케냐' )}">selected</c:if> >케냐</option>
		                                    <option value="114" <c:if test="${fn:contains( country.name_kor, '키리바시' )}">selected</c:if> >키리바시</option>
		                                    <option value="115" <c:if test="${fn:contains( country.name_kor, '조선민주주의인민공화국' )}">selected</c:if> >조선민주주의인민공화국</option>
		                                    <option value="116" <c:if test="${fn:contains( country.name_kor, '한국' )}">selected</c:if> >한국</option>
		                                    <option value="117" <c:if test="${fn:contains( country.name_kor, '쿠웨이트' )}">selected</c:if> >쿠웨이트</option>
		                                    <option value="118" <c:if test="${fn:contains( country.name_kor, '키르기스스탄' )}">selected</c:if> >키르기스스탄</option>
		                                    <option value="119" <c:if test="${fn:contains( country.name_kor, '라오스' )}">selected</c:if> >라오스</option>
		                                    <option value="120" <c:if test="${fn:contains( country.name_kor, '라트비아' )}">selected</c:if> >라트비아</option>
		                                    <option value="121" <c:if test="${fn:contains( country.name_kor, '레바논' )}">selected</c:if> >레바논</option>
		                                    <option value="122" <c:if test="${fn:contains( country.name_kor, '레소토' )}">selected</c:if> >레소토</option>
		                                    <option value="123" <c:if test="${fn:contains( country.name_kor, '라이베리아' )}">selected</c:if> >라이베리아</option>
		                                    <option value="124" <c:if test="${fn:contains( country.name_kor, '리비아' )}">selected</c:if> >리비아</option>
		                                    <option value="125" <c:if test="${fn:contains( country.name_kor, '리히텐슈타인' )}">selected</c:if> >리히텐슈타인</option>
		                                    <option value="126" <c:if test="${fn:contains( country.name_kor, '리투아니아' )}">selected</c:if> >리투아니아</option>
		                                    <option value="127" <c:if test="${fn:contains( country.name_kor, '룩셈부르크' )}">selected</c:if> >룩셈부르크</option>
		                                    <option value="128" <c:if test="${fn:contains( country.name_kor, '마카오' )}">selected</c:if> >마카오</option>
		                                    <option value="129" <c:if test="${fn:contains( country.name_kor, '북마케도니아' )}">selected</c:if> >북마케도니아</option>
		                                    <option value="130" <c:if test="${fn:contains( country.name_kor, '마다가스카르' )}">selected</c:if> >마다가스카르</option>
		                                    <option value="131" <c:if test="${fn:contains( country.name_kor, '말라위' )}">selected</c:if> >말라위</option>
		                                    <option value="132" <c:if test="${fn:contains( country.name_kor, '말레이시아' )}">selected</c:if> >말레이시아</option>
		                                    <option value="133" <c:if test="${fn:contains( country.name_kor, '몰디브' )}">selected</c:if> >몰디브</option>
		                                    <option value="134" <c:if test="${fn:contains( country.name_kor, '말리' )}">selected</c:if> >말리</option>
		                                    <option value="135" <c:if test="${fn:contains( country.name_kor, '몰타' )}">selected</c:if> >몰타</option>
		                                    <option value="136" <c:if test="${fn:contains( country.name_kor, '마셜 제도' )}">selected</c:if> >마셜 제도</option>
		                                    <option value="137" <c:if test="${fn:contains( country.name_kor, '마르티니크' )}">selected</c:if> >마르티니크</option>
		                                    <option value="138" <c:if test="${fn:contains( country.name_kor, '모리타니' )}">selected</c:if> >모리타니</option>
		                                    <option value="139" <c:if test="${fn:contains( country.name_kor, '모리셔스' )}">selected</c:if> >모리셔스</option>
		                                    <option value="140" <c:if test="${fn:contains( country.name_kor, '마요트' )}">selected</c:if> >마요트</option>
		                                    <option value="141" <c:if test="${fn:contains( country.name_kor, '멕시코' )}">selected</c:if> >멕시코</option>
		                                    <option value="142" <c:if test="${fn:contains( country.name_kor, '야프' )}">selected</c:if> >야프</option>
		                                    <option value="143" <c:if test="${fn:contains( country.name_kor, '몰도바' )}">selected</c:if> >몰도바</option>
		                                    <option value="144" <c:if test="${fn:contains( country.name_kor, '모나코' )}">selected</c:if> >모나코</option>
		                                    <option value="145" <c:if test="${fn:contains( country.name_kor, '몽골' )}">selected</c:if> >몽골</option>
		                                    <option value="146" <c:if test="${fn:contains( country.name_kor, '몬테네그로' )}">selected</c:if> >몬테네그로</option>
		                                    <option value="147" <c:if test="${fn:contains( country.name_kor, '몬트세랫' )}">selected</c:if> >몬트세랫</option>
		                                    <option value="148" <c:if test="${fn:contains( country.name_kor, '모로코' )}">selected</c:if> >모로코</option>
		                                    <option value="149" <c:if test="${fn:contains( country.name_kor, '모잠비크' )}">selected</c:if> >모잠비크</option>
		                                    <option value="150" <c:if test="${fn:contains( country.name_kor, '미얀마' )}">selected</c:if> >미얀마</option>
		                                    <option value="151" <c:if test="${fn:contains( country.name_kor, '나미비아' )}">selected</c:if> >나미비아</option>
		                                    <option value="152" <c:if test="${fn:contains( country.name_kor, '나우루' )}">selected</c:if> >나우루</option>
		                                    <option value="153" <c:if test="${fn:contains( country.name_kor, '네팔' )}">selected</c:if> >네팔</option>
		                                    <option value="154" <c:if test="${fn:contains( country.name_kor, '네덜란드' )}">selected</c:if> >네덜란드</option>
		                                    <option value="155" <c:if test="${fn:contains( country.name_kor, '네덜란드령 안틸레스' )}">selected</c:if> >네덜란드령 안틸레스</option>
		                                    <option value="156" <c:if test="${fn:contains( country.name_kor, '누벨칼레도니' )}">selected</c:if> >누벨칼레도니</option>
		                                    <option value="157" <c:if test="${fn:contains( country.name_kor, '뉴질랜드' )}">selected</c:if> >뉴질랜드</option>
		                                    <option value="158" <c:if test="${fn:contains( country.name_kor, '니카라과' )}">selected</c:if> >니카라과</option>
		                                    <option value="159" <c:if test="${fn:contains( country.name_kor, '니제르' )}">selected</c:if> >니제르</option>
		                                    <option value="160" <c:if test="${fn:contains( country.name_kor, '나이지리아' )}">selected</c:if> >나이지리아</option>
		                                    <option value="161" <c:if test="${fn:contains( country.name_kor, '니우에' )}">selected</c:if> >니우에</option>
		                                    <option value="162" <c:if test="${fn:contains( country.name_kor, '노퍽섬' )}">selected</c:if> >노퍽섬</option>
		                                    <option value="163" <c:if test="${fn:contains( country.name_kor, '북마리아나 제도' )}">selected</c:if> >북마리아나 제도</option>
		                                    <option value="164" <c:if test="${fn:contains( country.name_kor, '노르웨이' )}">selected</c:if> >노르웨이</option>
		                                    <option value="165" <c:if test="${fn:contains( country.name_kor, '오만' )}">selected</c:if> >오만</option>
		                                    <option value="166" <c:if test="${fn:contains( country.name_kor, '파키스탄' )}">selected</c:if> >파키스탄</option>
		                                    <option value="167" <c:if test="${fn:contains( country.name_kor, '팔라우' )}">selected</c:if> >팔라우</option>
		                                    <option value="168" <c:if test="${fn:contains( country.name_kor, '팔레스타인 영토' )}">selected</c:if> >팔레스타인 영토</option>
		                                    <option value="169" <c:if test="${fn:contains( country.name_kor, '파나마' )}">selected</c:if> >파나마</option>
		                                    <option value="170" <c:if test="${fn:contains( country.name_kor, '파푸아뉴기니' )}">selected</c:if> >파푸아뉴기니</option>
		                                    <option value="171" <c:if test="${fn:contains( country.name_kor, '파라과이' )}">selected</c:if> >파라과이</option>
		                                    <option value="172" <c:if test="${fn:contains( country.name_kor, '페루' )}">selected</c:if> >페루</option>
		                                    <option value="173" <c:if test="${fn:contains( country.name_kor, '필리핀' )}">selected</c:if> >필리핀</option>
		                                    <option value="174" <c:if test="${fn:contains( country.name_kor, '핏케언 제도' )}">selected</c:if> >핏케언 제도</option>
		                                    <option value="175" <c:if test="${fn:contains( country.name_kor, '폴란드' )}">selected</c:if> >폴란드</option>
		                                    <option value="176" <c:if test="${fn:contains( country.name_kor, '포르투갈' )}">selected</c:if> >포르투갈</option>
		                                    <option value="177" <c:if test="${fn:contains( country.name_kor, '푸에르토리코' )}">selected</c:if> >푸에르토리코</option>
		                                    <option value="178" <c:if test="${fn:contains( country.name_kor, '카타르' )}">selected</c:if> >카타르</option>
		                                    <option value="179" <c:if test="${fn:contains( country.name_kor, '레위니옹' )}">selected</c:if> >레위니옹</option>
		                                    <option value="180" <c:if test="${fn:contains( country.name_kor, '루마니아' )}">selected</c:if> >루마니아</option>
		                                    <option value="181" <c:if test="${fn:contains( country.name_kor, '러시아' )}">selected</c:if> >러시아</option>
		                                    <option value="182" <c:if test="${fn:contains( country.name_kor, '르완다' )}">selected</c:if> >르완다</option>
		                                    <option value="184" <c:if test="${fn:contains( country.name_kor, '세인트키츠 네비스' )}">selected</c:if> >세인트키츠 네비스</option>
		                                    <option value="185" <c:if test="${fn:contains( country.name_kor, '세인트루시아' )}">selected</c:if> >세인트루시아</option>
		                                    <option value="186" <c:if test="${fn:contains( country.name_kor, '생피에르 미클롱' )}">selected</c:if> >생피에르 미클롱</option>
		                                    <option value="187" <c:if test="${fn:contains( country.name_kor, '세인트빈센트 그레나딘' )}">selected</c:if> >세인트빈센트 그레나딘</option>
		                                    <option value="188" <c:if test="${fn:contains( country.name_kor, '사모아' )}">selected</c:if> >사모아</option>
		                                    <option value="189" <c:if test="${fn:contains( country.name_kor, '산마리노' )}">selected</c:if> >산마리노</option>
		                                    <option value="190" <c:if test="${fn:contains( country.name_kor, '상투메 프린시페' )}">selected</c:if> >상투메 프린시페</option>
		                                    <option value="191" <c:if test="${fn:contains( country.name_kor, '사우디아라비아' )}">selected</c:if> >사우디아라비아</option>
		                                    <option value="192" <c:if test="${fn:contains( country.name_kor, '세네갈' )}">selected</c:if> >세네갈</option>
		                                    <option value="193" <c:if test="${fn:contains( country.name_kor, '세르비아' )}">selected</c:if> >세르비아</option>
		                                    <option value="194" <c:if test="${fn:contains( country.name_kor, '세이셸' )}">selected</c:if> >세이셸</option>
		                                    <option value="195" <c:if test="${fn:contains( country.name_kor, '시에라리온' )}">selected</c:if> >시에라리온</option>
		                                    <option value="196" <c:if test="${fn:contains( country.name_kor, '싱가포르' )}">selected</c:if> >싱가포르</option>
		                                    <option value="197" <c:if test="${fn:contains( country.name_kor, '슬로바키아' )}">selected</c:if> >슬로바키아</option>
		                                    <option value="198" <c:if test="${fn:contains( country.name_kor, '슬로베니아' )}">selected</c:if> >슬로베니아</option>
		                                    <option value="199" <c:if test="${fn:contains( country.name_kor, '솔로몬 제도' )}">selected</c:if> >솔로몬 제도</option>
		                                    <option value="200" <c:if test="${fn:contains( country.name_kor, '소말리아' )}">selected</c:if> >소말리아</option>
		                                    <option value="201" <c:if test="${fn:contains( country.name_kor, '남아프리카 공화국' )}">selected</c:if> >남아프리카 공화국</option>
		                                    <option value="202" <c:if test="${fn:contains( country.name_kor, '사우스조지아 사우스샌드위치 제도' )}">selected</c:if> >사우스조지아 사우스샌드위치 제도</option>
		                                    <option value="203" <c:if test="${fn:contains( country.name_kor, '스페인' )}">selected</c:if> >스페인</option>
		                                    <option value="204" <c:if test="${fn:contains( country.name_kor, '스리랑카' )}">selected</c:if> >스리랑카</option>
		                                    <option value="205" <c:if test="${fn:contains( country.name_kor, '수단' )}">selected</c:if> >수단</option>
		                                    <option value="206" <c:if test="${fn:contains( country.name_kor, '수리남' )}">selected</c:if> >수리남</option>
		                                    <option value="207" <c:if test="${fn:contains( country.name_kor, '스발바르 얀마옌 제도' )}">selected</c:if> >스발바르 얀마옌 제도</option>
		                                    <option value="208" <c:if test="${fn:contains( country.name_kor, '에스와티니' )}">selected</c:if> >에스와티니</option>
		                                    <option value="209" <c:if test="${fn:contains( country.name_kor, '스웨덴' )}">selected</c:if> >스웨덴</option>
		                                    <option value="210" <c:if test="${fn:contains( country.name_kor, '스위스' )}">selected</c:if> >스위스</option>
		                                    <option value="211" <c:if test="${fn:contains( country.name_kor, '시리아' )}">selected</c:if> >시리아</option>
		                                    <option value="212" <c:if test="${fn:contains( country.name_kor, '대만' )}">selected</c:if> >대만</option>
		                                    <option value="213" <c:if test="${fn:contains( country.name_kor, '타지키스탄' )}">selected</c:if> >타지키스탄</option>
		                                    <option value="214" <c:if test="${fn:contains( country.name_kor, '탄자니아' )}">selected</c:if> >탄자니아</option>
		                                    <option value="215" <c:if test="${fn:contains( country.name_kor, '태국' )}">selected</c:if> >태국</option>
		                                    <option value="216" <c:if test="${fn:contains( country.name_kor, '동티모르' )}">selected</c:if> >동티모르</option>
		                                    <option value="217" <c:if test="${fn:contains( country.name_kor, '토고' )}">selected</c:if> >토고</option>
		                                    <option value="218" <c:if test="${fn:contains( country.name_kor, '토켈라우' )}">selected</c:if> >토켈라우</option>
		                                    <option value="219" <c:if test="${fn:contains( country.name_kor, '통가' )}">selected</c:if> >통가</option>
		                                    <option value="220" <c:if test="${fn:contains( country.name_kor, '트리니다드 토바고' )}">selected</c:if> >트리니다드 토바고</option>
		                                    <option value="221" <c:if test="${fn:contains( country.name_kor, '튀니지' )}">selected</c:if> >튀니지</option>
		                                    <option value="222" <c:if test="${fn:contains( country.name_kor, '터키' )}">selected</c:if> >터키</option>
		                                    <option value="223" <c:if test="${fn:contains( country.name_kor, '투르크메니스탄' )}">selected</c:if> >투르크메니스탄</option>
		                                    <option value="224" <c:if test="${fn:contains( country.name_kor, '터크스 케이커스 제도' )}">selected</c:if> >터크스 케이커스 제도</option>
		                                    <option value="225" <c:if test="${fn:contains( country.name_kor, '투발루' )}">selected</c:if> >투발루</option>
		                                    <option value="226" <c:if test="${fn:contains( country.name_kor, '우간다' )}">selected</c:if> >우간다</option>
		                                    <option value="227" <c:if test="${fn:contains( country.name_kor, '우크라이나' )}">selected</c:if> >우크라이나</option>
		                                    <option value="228" <c:if test="${fn:contains( country.name_kor, '아랍에미리트' )}">selected</c:if> >아랍에미리트</option>
		                                    <option value="229" <c:if test="${fn:contains( country.name_kor, '영국' )}">selected</c:if> >영국</option>
		                                    <option value="230" <c:if test="${fn:contains( country.name_kor, '미국' )}">selected</c:if> >미국</option>
		                                    <option value="231" <c:if test="${fn:contains( country.name_kor, '미국령 군소 제도' )}">selected</c:if> >미국령 군소 제도</option>
		                                    <option value="232" <c:if test="${fn:contains( country.name_kor, '우루과이' )}">selected</c:if> >우루과이</option>
		                                    <option value="233" <c:if test="${fn:contains( country.name_kor, '우즈베키스탄' )}">selected</c:if> >우즈베키스탄</option>
		                                    <option value="234" <c:if test="${fn:contains( country.name_kor, '바누아투' )}">selected</c:if> >바누아투</option>
		                                    <option value="235" <c:if test="${fn:contains( country.name_kor, '베네수엘라' )}">selected</c:if> >베네수엘라</option>
		                                    <option value="236" <c:if test="${fn:contains( country.name_kor, '베트남' )}">selected</c:if> >베트남</option>
		                                    <option value="237" <c:if test="${fn:contains( country.name_kor, '영국령 버진아일랜드' )}">selected</c:if> >영국령 버진아일랜드</option>
		                                    <option value="238" <c:if test="${fn:contains( country.name_kor, '미국령 버진아일랜드' )}">selected</c:if> >미국령 버진아일랜드</option>
		                                    <option value="239" <c:if test="${fn:contains( country.name_kor, '왈리스 푸투나' )}">selected</c:if> >왈리스 푸투나</option>
		                                    <option value="240" <c:if test="${fn:contains( country.name_kor, '서사하라' )}">selected</c:if> >서사하라</option>
		                                    <option value="241" <c:if test="${fn:contains( country.name_kor, '예멘' )}">selected</c:if> >예멘</option>
		                                    <option value="242" <c:if test="${fn:contains( country.name_kor, '잠비아' )}">selected</c:if> >잠비아</option>
		                                    <option value="243" <c:if test="${fn:contains( country.name_kor, '짐바브웨' )}">selected</c:if> >짐바브웨</option>
			                            	</c:forEach>
			                            	</c:if>
		                                    <option value="1">아프가니스탄</option>
		                                    <option value="2">올란드 제도</option>
		                                    <option value="3">알바니아</option>
		                                    <option value="4">알제리</option>
		                                    <option value="5">아메리칸사모아</option>
		                                    <option value="6">안도라</option>
		                                    <option value="7">앙골라</option>
		                                    <option value="8">앵귈라</option>
		                                    <option value="9">남극</option>
		                                    <option value="10">앤티가 바부다</option>
		                                    <option value="11">아르헨티나</option>
		                                    <option value="12">아르메니아</option>
		                                    <option value="13">아루바</option>
		                                    <option value="14">오스트레일리아</option>
		                                    <option value="15">오스트리아</option>
		                                    <option value="16">아제르바이잔</option>
		                                    <option value="17">바하마</option>
		                                    <option value="18">바레인</option>
		                                    <option value="19">방글라데시</option>
		                                    <option value="20">바베이도스</option>
		                                    <option value="21">벨라루스</option>
		                                    <option value="22">벨기에</option>
		                                    <option value="23">벨리즈</option>
		                                    <option value="24">베냉</option>
		                                    <option value="25">버뮤다</option>
		                                    <option value="26">부탄</option>
		                                    <option value="27">볼리비아</option>
		                                    <option value="28">보스니아 헤르체고비나</option>
		                                    <option value="29">보츠와나</option>
		                                    <option value="30">부베 섬</option>
		                                    <option value="31">브라질</option>
		                                    <option value="32">영국령 인도양 지역</option>
		                                    <option value="33">브루나이</option>
		                                    <option value="34">불가리아</option>
		                                    <option value="35">부르키나 파소</option>
		                                    <option value="36">부룬디</option>
		                                    <option value="37">캄보디아</option>
		                                    <option value="38">카메룬</option>
		                                    <option value="39">캐나다</option>
		                                    <option value="40">카보베르데</option>
		                                    <option value="41">케이맨 제도</option>
		                                    <option value="42">중앙아프리카 공화국</option>
		                                    <option value="43">차드</option>
		                                    <option value="44">칠레</option>
		                                    <option value="45">중국</option>
		                                    <option value="46">크리스마스섬</option>
		                                    <option value="47">코코스 제도</option>
		                                    <option value="48">콜롬비아</option>
		                                    <option value="49">코모로</option>
		                                    <option value="50">콩고 민주 공화국</option>
		                                    <option value="51">쿡 제도</option>
		                                    <option value="52">코스타리카</option>
		                                    <option value="53">코트디부아르</option>
		                                    <option value="54">크로아티아</option>
		                                    <option value="55">쿠바</option>
		                                    <option value="56">키프로스</option>
		                                    <option value="57">체코</option>
		                                    <option value="58">덴마크</option>
		                                    <option value="59">지부티</option>
		                                    <option value="60">도미니카 연방</option>
		                                    <option value="61">도미니카 공화국</option>
		                                    <option value="62">에콰도르</option>
		                                    <option value="63">이집트</option>
		                                    <option value="64">엘살바도르</option>
		                                    <option value="65">적도 기니</option>
		                                    <option value="66">에리트레아</option>
		                                    <option value="67">에스토니아</option>
		                                    <option value="68">에티오피아</option>
		                                    <option value="69">포클랜드 제도</option>
		                                    <option value="70">페로 제도</option>
		                                    <option value="71">피지</option>
		                                    <option value="72">핀란드</option>
		                                    <option value="73">프랑스</option>
		                                    <option value="74">프랑스령 기아나</option>
		                                    <option value="75">프랑스령 폴리네시아</option>
		                                    <option value="76">프랑스령 남방 및 남극</option>
		                                    <option value="77">가봉</option>
		                                    <option value="78">감비아</option>
		                                    <option value="79">조지아</option>
		                                    <option value="80">독일</option>
		                                    <option value="81">가나</option>
		                                    <option value="82">지브롤터</option>
		                                    <option value="83">그리스</option>
		                                    <option value="84">그린란드</option>
		                                    <option value="85">그레나다</option>
		                                    <option value="86">과들루프</option>
		                                    <option value="87">괌</option>
		                                    <option value="88">과테말라</option>
		                                    <option value="89">건지</option>
		                                    <option value="90">기니</option>
		                                    <option value="91">기니비사우</option>
		                                    <option value="92">가이아나</option>
		                                    <option value="93">아이티</option>
		                                    <option value="94">허드 맥도널드 제도</option>
		                                    <option value="95">바티칸 시국</option>
		                                    <option value="96">온두라스</option>
		                                    <option value="97">홍콩</option>
		                                    <option value="98">헝가리</option>
		                                    <option value="99">아이슬란드</option>
		                                    <option value="100">인도</option>
		                                    <option value="101">인도네시아</option>
		                                    <option value="102">이슬람 공화국</option>
		                                    <option value="103">이라크</option>
		                                    <option value="104">아일랜드섬</option>
		                                    <option value="105">맨섬</option>
		                                    <option value="106">이스라엘</option>
		                                    <option value="107">이탈리아</option>
		                                    <option value="108">자메이카</option>
		                                    <option value="109">일본</option>
		                                    <option value="110">저지섬</option>
		                                    <option value="111">요르단</option>
		                                    <option value="112">카자흐스탄</option>
		                                    <option value="113">케냐</option>
		                                    <option value="114">키리바시</option>
		                                    <option value="115">조선민주주의인민공화국</option>
		                                    <option value="116">한국</option>
		                                    <option value="117">쿠웨이트</option>
		                                    <option value="118">키르기스스탄</option>
		                                    <option value="119">라오스</option>
		                                    <option value="120">라트비아</option>
		                                    <option value="121">레바논</option>
		                                    <option value="122">레소토</option>
		                                    <option value="123">라이베리아</option>
		                                    <option value="124">리비아</option>
		                                    <option value="125">리히텐슈타인</option>
		                                    <option value="126">리투아니아</option>
		                                    <option value="127">룩셈부르크</option>
		                                    <option value="128">마카오</option>
		                                    <option value="129">북마케도니아</option>
		                                    <option value="130">마다가스카르</option>
		                                    <option value="131">말라위</option>
		                                    <option value="132">말레이시아</option>
		                                    <option value="133">몰디브</option>
		                                    <option value="134">말리</option>
		                                    <option value="135">몰타</option>
		                                    <option value="136">마셜 제도</option>
		                                    <option value="137">마르티니크</option>
		                                    <option value="138">모리타니</option>
		                                    <option value="139">모리셔스</option>
		                                    <option value="140">마요트</option>
		                                    <option value="141">멕시코</option>
		                                    <option value="142">야프</option>
		                                    <option value="143">몰도바</option>
		                                    <option value="144">모나코</option>
		                                    <option value="145">몽골</option>
		                                    <option value="146">몬테네그로</option>
		                                    <option value="147">몬트세랫</option>
		                                    <option value="148">모로코</option>
		                                    <option value="149">모잠비크</option>
		                                    <option value="150">미얀마</option>
		                                    <option value="151">나미비아</option>
		                                    <option value="152">나우루</option>
		                                    <option value="153">네팔</option>
		                                    <option value="154">네덜란드</option>
		                                    <option value="155">네덜란드령 안틸레스</option>
		                                    <option value="156">누벨칼레도니</option>
		                                    <option value="157">뉴질랜드</option>
		                                    <option value="158">니카라과</option>
		                                    <option value="159">니제르</option>
		                                    <option value="160">나이지리아</option>
		                                    <option value="161">니우에</option>
		                                    <option value="162">노퍽섬</option>
		                                    <option value="163">북마리아나 제도</option>
		                                    <option value="164">노르웨이</option>
		                                    <option value="165">오만</option>
		                                    <option value="166">파키스탄</option>
		                                    <option value="167">팔라우</option>
		                                    <option value="168">팔레스타인 영토</option>
		                                    <option value="169">파나마</option>
		                                    <option value="170">파푸아뉴기니</option>
		                                    <option value="171">파라과이</option>
		                                    <option value="172">페루</option>
		                                    <option value="173">필리핀</option>
		                                    <option value="174">핏케언 제도</option>
		                                    <option value="175">폴란드</option>
		                                    <option value="176">포르투갈</option>
		                                    <option value="177">푸에르토리코</option>
		                                    <option value="178">카타르</option>
		                                    <option value="179">레위니옹</option>
		                                    <option value="180">루마니아</option>
		                                    <option value="181">러시아</option>
		                                    <option value="182">르완다</option>
		                                    <option value="184">세인트키츠 네비스</option>
		                                    <option value="185">세인트루시아</option>
		                                    <option value="186">생피에르 미클롱</option>
		                                    <option value="187">세인트빈센트 그레나딘</option>
		                                    <option value="188">사모아</option>
		                                    <option value="189">산마리노</option>
		                                    <option value="190">상투메 프린시페</option>
		                                    <option value="191">사우디아라비아</option>
		                                    <option value="192">세네갈</option>
		                                    <option value="193">세르비아</option>
		                                    <option value="194">세이셸</option>
		                                    <option value="195">시에라리온</option>
		                                    <option value="196">싱가포르</option>
		                                    <option value="197">슬로바키아</option>
		                                    <option value="198">슬로베니아</option>
		                                    <option value="199">솔로몬 제도</option>
		                                    <option value="200">소말리아</option>
		                                    <option value="201">남아프리카 공화국</option>
		                                    <option value="202">사우스조지아 사우스샌드위치 제도</option>
		                                    <option value="203">스페인</option>
		                                    <option value="204">스리랑카</option>
		                                    <option value="205">수단</option>
		                                    <option value="206">수리남</option>
		                                    <option value="207">스발바르 얀마옌 제도</option>
		                                    <option value="208">에스와티니</option>
		                                    <option value="209">스웨덴</option>
		                                    <option value="210">스위스</option>
		                                    <option value="211">시리아</option>
		                                    <option value="212">대만</option>
		                                    <option value="213">타지키스탄</option>
		                                    <option value="214">탄자니아</option>
		                                    <option value="215">태국</option>
		                                    <option value="216">동티모르</option>
		                                    <option value="217">토고</option>
		                                    <option value="218">토켈라우</option>
		                                    <option value="219">통가</option>
		                                    <option value="220">트리니다드 토바고</option>
		                                    <option value="221">튀니지</option>
		                                    <option value="222">터키</option>
		                                    <option value="223">투르크메니스탄</option>
		                                    <option value="224">터크스 케이커스 제도</option>
		                                    <option value="225">투발루</option>
		                                    <option value="226">우간다</option>
		                                    <option value="227">우크라이나</option>
		                                    <option value="228">아랍에미리트</option>
		                                    <option value="229">영국</option>
		                                    <option value="230">미국</option>
		                                    <option value="231">미국령 군소 제도</option>
		                                    <option value="232">우루과이</option>
		                                    <option value="233">우즈베키스탄</option>
		                                    <option value="234">바누아투</option>
		                                    <option value="235">베네수엘라</option>
		                                    <option value="236">베트남</option>
		                                    <option value="237">영국령 버진아일랜드</option>
		                                    <option value="238">미국령 버진아일랜드</option>
		                                    <option value="239">왈리스 푸투나</option>
		                                    <option value="240">서사하라</option>
		                                    <option value="241">예멘</option>
		                                    <option value="242">잠비아</option>
		                                    <option value="243">짐바브웨</option>
		                                </select>
		                            </div>
		
		                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; margin: 0 0 0 10px;">
		                                <select multiple="multiple" name="genre_kor" id="genre_kor" class="country" style=" width: 100%; height: 50px; border: 1px solid rgb(255, 255, 255);">
		                                    <option value="" selected>장르선택</option>
		                                	<c:forEach items="${ adminGenreView }" var="genre">
		                                    <option value="2" <c:if test="${fn:contains( genre.genre_kor, '액션' )}">selected</c:if> >액션</option>
		                                    <option value="3" <c:if test="${fn:contains( genre.genre_kor, '모험' )}">selected</c:if> >모험</option>
		                                    <option value="4" <c:if test="${fn:contains( genre.genre_kor, '예술' )}">selected</c:if> >예술</option>
		                                    <option value="5" <c:if test="${fn:contains( genre.genre_kor, '코미디' )}">selected</c:if> >코미디</option>
		                                    <option value="6" <c:if test="${fn:contains( genre.genre_kor, '블랙코미디' )}">selected</c:if> >블랙코미디</option>
		                                    <option value="7" <c:if test="${fn:contains( genre.genre_kor, '로멘틱 코미디' )}">selected</c:if> >로멘틱 코미디</option>
		                                    <option value="8" <c:if test="${fn:contains( genre.genre_kor, '다큐멘터리' )}">selected</c:if> >다큐멘터리</option>
		                                    <option value="9" <c:if test="${fn:contains( genre.genre_kor, '드라마' )}">selected</c:if> >드라마</option>
		                                    <option value="10" <c:if test="${fn:contains( genre.genre_kor, '코미디 드라마' )}">selected</c:if> >코미디 드라마</option>
		                                    <option value="11" <c:if test="${fn:contains( genre.genre_kor, '시대극' )}">selected</c:if> >시대극</option>
		                                    <option value="12" <c:if test="${fn:contains( genre.genre_kor, '멜로드라마' )}">selected</c:if> >멜로드라마</option>
		                                    <option value="13" <c:if test="${fn:contains( genre.genre_kor, '교육영화' )}">selected</c:if> >교육영화</option>
		                                    <option value="14" <c:if test="${fn:contains( genre.genre_kor, '판타지' )}">selected</c:if> >판타지</option>
		                                    <option value="15" <c:if test="${fn:contains( genre.genre_kor, '과학 판타지' )}">selected</c:if> >과학 판타지</option>
		                                    <option value="16" <c:if test="${fn:contains( genre.genre_kor, '누아르' )}">selected</c:if> >누아르</option>
		                                    <option value="17" <c:if test="${fn:contains( genre.genre_kor, '공포' )}">selected</c:if> >공포</option>
		                                    <option value="18" <c:if test="${fn:contains( genre.genre_kor, '뮤지컬' )}">selected</c:if> >뮤지컬</option>
		                                    <option value="19" <c:if test="${fn:contains( genre.genre_kor, '미스터리' )}">selected</c:if> >미스터리</option>
		                                    <option value="20" <c:if test="${fn:contains( genre.genre_kor, '포르노' )}">selected</c:if> >포르노</option>
		                                    <option value="21" <c:if test="${fn:contains( genre.genre_kor, '성인' )}">selected</c:if> >성인</option>
		                                    <option value="22" <c:if test="${fn:contains( genre.genre_kor, '멜로' )}">selected</c:if> >멜로</option>
		                                    <option value="23" <c:if test="${fn:contains( genre.genre_kor, '로멘스' )}">selected</c:if> >로멘스</option>
		                                    <option value="24" <c:if test="${fn:contains( genre.genre_kor, '재난' )}">selected</c:if> >재난</option>
		                                    <option value="25" <c:if test="${fn:contains( genre.genre_kor, '좀비' )}">selected</c:if> >좀비</option>
		                                    <option value="26" <c:if test="${fn:contains( genre.genre_kor, '전쟁' )}">selected</c:if> >전쟁</option>
		                                    <option value="27" <c:if test="${fn:contains( genre.genre_kor, '애니메이션' )}">selected</c:if> >애니메이션</option>
		                                    <option value="28" <c:if test="${fn:contains( genre.genre_kor, '독립' )}">selected</c:if> >독립</option>
		                                    <option value="29" <c:if test="${fn:contains( genre.genre_kor, '스포츠' )}">selected</c:if> >스포츠</option>
		                                    <option value="30" <c:if test="${fn:contains( genre.genre_kor, '음악' )}">selected</c:if> >음악</option>
		                                    <option value="31" <c:if test="${fn:contains( genre.genre_kor, '뮤지컬' )}">selected</c:if> >뮤지컬</option>
		                                    <option value="32" <c:if test="${fn:contains( genre.genre_kor, '틴에이저' )}">selected</c:if> >틴에이저</option>
		                                    <option value="33" <c:if test="${fn:contains( genre.genre_kor, '시트콤' )}">selected</c:if> >시트콤</option>
		                                    <option value="34" <c:if test="${fn:contains( genre.genre_kor, '가족' )}">selected</c:if> >가족</option>
		                                    <option value="35" <c:if test="${fn:contains( genre.genre_kor, '역사' )}">selected</c:if> >역사</option>
		                                    <option value="36" <c:if test="${fn:contains( genre.genre_kor, '독립' )}">selected</c:if> >독립</option>
		                                    <option value="37" <c:if test="${fn:contains( genre.genre_kor, '스포츠' )}">selected</c:if> >스포츠</option>
		                                    <option value="38" <c:if test="${fn:contains( genre.genre_kor, '음악' )}">selected</c:if> >음악</option>
		                                    <option value="39" <c:if test="${fn:contains( genre.genre_kor, '뮤지컬' )}">selected</c:if> >뮤지컬</option>
		                                	</c:forEach>
		                                    <option value="2">액션</option>
		                                    <option value="3">모험</option>
		                                    <option value="4">예술</option>
		                                    <option value="5">코미디</option>
		                                    <option value="6">블랙코미디</option>
		                                    <option value="7">로멘틱 코미디</option>
		                                    <option value="8">다큐멘터리</option>
		                                    <option value="9">드라마</option>
		                                    <option value="10">코미디 드라마</option>
		                                    <option value="11">시대극</option>
		                                    <option value="12">멜로드라마</option>
		                                    <option value="13">교육영화</option>
		                                    <option value="14">판타지</option>
		                                    <option value="15">과학 판타지</option>
		                                    <option value="16">누아르</option>
		                                    <option value="17">공포</option>
		                                    <option value="18">뮤지컬</option>
		                                    <option value="19">미스터리</option>
		                                    <option value="20">포르노</option>
		                                    <option value="21">성인</option>
		                                    <option value="22">멜로</option>
		                                    <option value="23">로멘스</option>
		                                    <option value="24">재난</option>
		                                    <option value="25">좀비</option>
		                                    <option value="26">전쟁</option>
		                                    <option value="27">애니메이션</option>
		                                    <option value="28">독립</option>
		                                    <option value="29">스포츠</option>
		                                    <option value="30">음악</option>
		                                    <option value="31">뮤지컬</option>
		                                    <option value="32">틴에이저</option>
		                                    <option value="33">시트콤</option>
		                                    <option value="34">가족</option>
		                                    <option value="35">역사</option>
		                                    <option value="36">독립</option>
		                                    <option value="37">스포츠</option>
		                                    <option value="38">음악</option>
		                                    <option value="39">뮤지컬</option>
		                                </select>
		                            </div>
		                            <div>
		                                <input type="text" name="movie_running_time" placeholder="상영시간(ex.분 단위로 환산하여 숫자만 입력)" class="inBox1" id="movTime"
											value="${ movieVo.movie_running_time }"/>
		                            </div>
		                            <div>
		                                <select name="movie_grade" class="inBox1" id="movAge" onchange="changeValue(this)">
		                                    <option value="" selected>연령등급</option>
		                                    <option value="all" <c:if test="${fn:contains( movieVo.movie_grade, '전체관람가' )}">selected</c:if> >전체관람가</option>
		                                    <option value="U12" <c:if test="${fn:contains( movieVo.movie_grade, '12세 관람가' )}">selected</c:if> >12세 관람가</option>
		                                    <option value="U15" <c:if test="${fn:contains( movieVo.movie_grade, '15세 관람가' )}">selected</c:if> >15세 관람가</option>
		                                    <option value="U19" <c:if test="${fn:contains( movieVo.movie_grade, '청소년 관람불가' )}">selected</c:if> >청소년 관람불가</option>
		                                    <option value="19over" <c:if test="${fn:contains( movieVo.movie_grade, '제한 상영가' )}">selected</c:if> >제한 상영가</option>
		                                </select>
		                            </div>
		
		                            <div>
		                                &nbsp;&nbsp;&nbsp;출연/제작
	                            		<select name="searchJob" class="inBox1" id="searchJob">
	                            			<option value="" selected>직업군 선택</option>
	                            			<option value="감독">감독</option>
	                            			<option value="배우">배우</option>
	                            		</select>
	                            		<input type="text" name="searchName" class="inBox2" id="searchName" placeholder="감독 or 배우 이름">
	                            		<button type="button" id="search_button" style="border-radius:7px;">검색</button>
		                            </div>
									
		                            <div id="authorBox">
		                                <table style="width:100%; height:40%;">
		                                	<tbody id="tbody">
		                                		<c:forEach items="${ adminDirectorView }" var="director">
			                                	<tr>
			                                		<td>
			                                			<div class="personBox">
				                                			<img src="${ director.director_post_url }" class="profile_img">
				                                			<input type="text" name="director_name" style="width:30%; border:none; text-align:center;" value="${ director.director_name }">
				                                			<input type="hidden" name="director_id" value="${ director.director_id }">
				                                			<span style="margin-left:10%;">감독</span>
				                                			<button type="button" class="minus_img" style="border:none; background:none; margin-left:10%;">
					                                			<img src="/assets/img/minus_outline_icon.png" class="profile_minus">
				                                			</button>
			                                			</div>
			                                		</td>
			                                	</tr>
		                                		</c:forEach>
			                                	<c:forEach items="${ adminActorView }" var="actor">
			                                	<tr>
			                                		<td>
			                                			<div class="personBox">
				                                			<img src="${ actor.actor_post_url }" class="profile_img">
				                                			<input type="text" name="actor_name" style="width:30%; border:none; text-align:center;" value="${ actor.actor_name }">
				                                			<input type="hidden" name="actor_id" value="${ actor.actor_id }">
				                                			<span style="margin-left:10%;">배우</span>
				                                			<button type="button" class="minus_img" style="border:none; background:none; margin-left:10%; display:inline-block;">
					                                			<img src="/assets/img/minus_outline_icon.png" class="profile_minus">
				                                			</button>
			                                			</div>
			                                		</td>
			                                	</tr>
			                                	</c:forEach>
		                                	</tbody>
		                                </table>
		                            </div>
		                        </div>
		                        <div id="inputbox2">
		                            <div>
		                            	<c:if test="${ movieVo.movie_desc == '0' }">
		                                <input type="text" name="movie_desc" id="movSummary" placeholder="내용" value="등록된 영화내용이 없습니다" />
		                            	</c:if>
		                            	<c:if test="${ movieVo.movie_desc != '0' }">
		                                <input type="text" name="movie_desc" id="movSummary" placeholder="내용" value="${ movieVo.movie_desc }" />
		                            	</c:if>
		                            </div>
		                            <div id="wgo">
		                                <div>감상가능한 곳</div>
		                                <div class="wgo2">
		                                    <div class="wBox_1" style="width:95%;">
		                                        <div class="wBox2">
		                                            <div class="container">
		                                				<select multiple="multiple" name="ott_id" id="ott_id" class="country" style=" width: 100%; height: 50px; border: 1px solid rgb(255, 255, 255);">
		                                                    <option value="">OTT플랫폼 선택</option>
		                                                    <c:forEach items="${ adminOttView }" var="OTT">
		                                                    <option value="1" <c:if test="${fn:contains( OTT.ott_id, '1' )}">selected</c:if> >왓챠</option>
		                                                    <option value="2" <c:if test="${fn:contains( OTT.ott_id, '2' )}">selected</c:if> >넷플릭스</option>
		                                                    <option value="3" <c:if test="${fn:contains( OTT.ott_id, '3' )}">selected</c:if> >디즈니플러스</option>
		                                                    <option value="4" <c:if test="${fn:contains( OTT.ott_id, '4' )}">selected</c:if> >티빙</option>
		                                                    <option value="5" <c:if test="${fn:contains( OTT.ott_id, '5' )}">selected</c:if> >쿠팡플레이</option>
		                                                    </c:forEach>
		                                                    <option value="1">왓챠</option>
		                                                    <option value="2">넷플릭스</option>
		                                                    <option value="3">디즈니플러스</option>
		                                                    <option value="4">티빙</option>
		                                                    <option value="5">쿠팡플레이</option>
		                                                </select>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div id="conBox">
		                                <div class="conzone">
		                                    갤러리
		                                    <div class="card1" >
		                                        <div id="margin_little" >
		                                            <div id="blank_container" >
		                                                <label for="inputFile" hidden>URL입력</label>
		                                                <input type="text" accept=".jpg, .jpeg, .png, .gif" id="inputFile" hidden/>
		                                            </div>
		                                            <c:forEach items="${ adminGalleryView }" var="gallery">
		                                            <div class="resultFile gallery_url" style="display:block;">
		                                                <input type="text" name="movie_gallery_url" class="inBox1" placeholder="갤러리 url을 입력해주세요" value="${ gallery.movie_gallery_url }">
		                                            </div>
		                                            </c:forEach>
		                                            <div class="resultFile gallery_url" style="display:block;">
		                                                <input type="text" name="movie_gallery_url" class="inBox1" placeholder="갤러리 url을 입력해주세요">
		                                            </div>
		                                            <div id="only_flex_box">
			                                            <div type="button" id="gallery_plus">
			                                                <img id="plus_img" src="/assets/img/plus_outline_icon.png" alt=""/>
			                                            </div>
			                                            <div type="button" id="gallery_minus">
			                                                <img id="minus_img" src="/assets/img/minus_outline_icon.png" alt=""/>
			                                            </div>
			                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="conzone">
		                                    동영상
		                                    <div id="vBox">
												<c:if test="${ adminTrailerView != null }">
		                                    	<c:forEach items="${ adminTrailerView }" var="trailer">
	                                            <div class="vBox1 trailer_url" style="display:block;">
                                                    <div>
                                                        <input type="text" name="movie_trailer_url" placeholder="URL주소" class="vBox2" id="vu0" value="${ trailer.movie_trailer_url }"/>
                                                    </div>
	                                            </div>
		                                    	</c:forEach>
												</c:if>
												<div class="vBox1 trailer_url" style="display:block;">
                                                   	<div>
                                                        <input type="text" name="movie_trailer_url" placeholder="URL주소" class="vBox2" id="vu0" value=""/>
													</div>
												</div>
												<div id="only_flex_box">
													<div type="button" id="trailer_plus">
														<img id="plus_img" src="/assets/img/plus_outline_icon.png" alt=""/>
													</div>
													<div type="button" id="trailer_minus">
														<img id="minus_img" src="/assets/img/minus_outline_icon.png" alt=""/>
													</div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="conBox2">
		                        <div id="po">
		                            &nbsp;&nbsp;&nbsp;포스터
		                            <span style="color: red; font-size: smaller; margin: 0 0 0 37%">
		                            	*1개의 파일만 등록가능합니다.
		                            </span>
		                            <div id="poBox">
		                                <label for="pobtn" hidden>URL입력 </label>
		                                <!--당겼을때 출력-->
		                                <input type="file" accept=".jpg, .jpeg, .png, .gif" id="pobtn" onchange="readLink(this);" hidden/>
		                                <div id="poBox2">
		                                    <input type="text" name="movie_post_url" class="inBox1" placeholder="포스터 url을 입력해주세요" value="${ movieVo.movie_post_url }">
		                                </div>
		                            </div>
		                        </div>
		                        <div id="ba">
		                            &nbsp;&nbsp;&nbsp;배경사진
		                            <span style="color: red; font-size: smaller; margin: 0 0 0 37%">
		                            	*1개의 파일만 등록가능합니다.
		                            </span>
		                            <div id="baBox" >
		                                <label for="babtn" hidden>URL입력</label>
		                                <input type="file" accept=".jpg, .jpeg, .png, .gif" id="babtn" onchange="readLink1(this);" hidden/>
		                                <div id="baBox2">
		                                    <input type="text" name="background_post_url" class="inBox1" placeholder="배경사진 url을 입력해주세요" value="${ movieVo.background_post_url }">
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                </form>
		                <div id="MBox">
		                    <button id="btn1" class="modifyBtn">등록하기</button>
		                    <button id="btn2" onclick="location.href='/admin/3_contents/movie_list'">취소하기</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>