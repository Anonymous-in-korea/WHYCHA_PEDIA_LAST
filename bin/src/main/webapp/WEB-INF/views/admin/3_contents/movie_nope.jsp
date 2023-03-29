<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Dashboard - SB Admin</title>
		<link href="/css/admin/styles.css" rel="stylesheet" />
		<link href="/css/admin/3_contents/movie/movie_write.css" rel="stylesheet" />
		<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css"/>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<!--These jQuery libraries for select2 need to be included-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
		<script src="https://unpkg.com/vue@3"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css"/>
		<script>
		    $(document).ready(function () {
		        //Select2
		        $(".country").select2({
		            maximumSelectionLength: 10,
		        });
		    });
		</script>
	</head>
	<body class="sb-nav-fixed">
		<div id="person_search_modal">
		    <div id="person_modal_bigbox">
		        <div class="modal_big_title"><div>인물검색</div></div>
		        <input id="modal_search_bar" v-model="search_msg" onchange="search_db()" placeholder="예) 박찬욱, 손현주, 이성민"/>
		        <div id="modal_search_result">
		            <!--     검색결과 반복틀 시작!      -->
		            <div class="onePersonBigBox" v-for="person in itemlist">
		                <div hidden>{{person.perIdx}}</div>
		                <div class="profileBox">
		                    <img :src=`${person.perPhoto}` class="personSimg"></div>
		                <div class="contentBox">
		                    <b>{{person.perName}}</b>
		                    <p>{{person.perRole}}</p>
		                    <div class="appearBoxes">
		                        <div v-for="appear in person.appearance">{{appear}}</div>
		                    </div>
		                </div>
		                <div class="chooseBtnBox">
		                    <button v-if="person.chooseCheck == null" class="chooseBtn" onclick="choseCheck(this)">선택</button>
		                    <button v-if="person.chooseCheck != null" class="chooseBtn" onclick="choseCheck(this)">✔️선택됨</button>
		                </div>
		            </div>
		        </div>
		        <div v-if="modalInnerBtn" id="person_search_cancel" onclick="search_cancel()">선택완료</div>
		        <div v-if="!modalInnerBtn" class="flexCenterCenter">
		            <div class="btn_css" onclick="choosePerson(this)">추가하기</div>
		            <div class="btn_css" onclick="goBackList()">뒤로가기</div>
		        </div>
		    </div>
		</div>
		
		<div id="layoutSidenav">
		    <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                	<a href="/admin/admin_index"><img src="/images/no1_WHYCHA_NONBACK.png" style="width:100%;"></a>
					<%@ include file="../fragment/sidefooter.jsp" %>
					<%@ include file="../fragment/sidenav.jsp" %>
                </nav>
            </div>

		    <div id="layoutSidenav_content">
		        <main>
		            <div class="container-fluid px-4">
		                <h1 class="mt-4">영화</h1>
		                <div class="card">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        영화
		                    </div>
		                    <div class="card-body">
		                        <div id="inputbox">
		                            기본정보
		                            <div>
		                                <input type="text" placeholder="표기할 영화제목" class="inBox1" id="movTitle"/>
		                            </div>
		                            <div>
		                                <input type="text" placeholder="원제" class="inBox1" id="movTitleOrg"/>
		                            </div>
		                            <div>
		                                <input type="date" data-placeholder="개봉 날짜" aria-required="true" value="{startDateValue}" className="{styles.selectDay}"
											onChange="{StartDateValueHandler}" required class="inBox1" id="movMakingDate"/>
		                            </div>
		                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; margin: 0 0 0 10px;">
		                                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" style="margin: 10px 0 0 0"/>
		                                <select multiple="multiple" id="myList" style="width: 100%; height: 15px; border-top-width: 0px; border-right-width: 0px;
											border-bottom-width: 0px; border-left-width: 0px; border: 1px solid rgb(255, 255, 255);">
		                                    <option value="국가" disabled hidden>국가</option>
		                                    <option value="아프가니스탄">아프가니스탄</option>
		                                    <option value="올란드 제도">올란드 제도</option>
		                                    <option value="알바니아 ">알바니아</option>
		                                    <option value="알제리">알제리</option>
		                                    <option value="아메리칸사모아">아메리칸사모아</option>
		                                    <option value="안도라">안도라</option>
		                                    <option value="앙골라">앙골라</option>
		                                    <option value="앵귈라 ">앵귈라</option>
		                                    <option value="남극 ">남극</option>
		                                    <option value="앤티가 바부다">앤티가 바부다</option>
		                                    <option value="아르헨티나 ">아르헨티나</option>
		                                    <option value="아르메니아 ">아르메니아</option>
		                                    <option value="아루바">아루바</option>
		                                    <option value="오스트레일리아 ">오스트레일리아</option>
		                                    <option value="오스트리아">오스트리아</option>
		                                    <option value="아제르바이잔">아제르바이잔</option>
		                                    <option value="바하마">바하마</option>
		                                    <option value="바레인">바레인</option>
		                                    <option value="방글라데시">방글라데시</option>
		                                    <option value="바베이도스">바베이도스</option>
		                                    <option value="벨라루스">벨라루스</option>
		                                    <option value="벨기에">벨기에</option>
		                                    <option value="벨리즈">벨리즈</option>
		                                    <option value="베냉">베냉</option>
		                                    <option value="버뮤다">버뮤다</option>
		                                    <option value="부탄">부탄</option>
		                                    <option value="볼리비아">볼리비아</option>
		                                    <option value="보스니아 헤르체고비나">보스니아 헤르체고비나</option>
		                                    <option value="보츠와나">보츠와나</option>
		                                    <option value="부베 섬">부베 섬</option>
		                                    <option value="브라질">브라질</option>
		                                    <option value="영국령 인도양 지역">영국령 인도양 지역</option>
		                                    <option value="브루나이">브루나이</option>
		                                    <option value="불가리아">불가리아</option>
		                                    <option value="부르키나 파소">부르키나 파소</option>
		                                    <option value="부룬디">부룬디</option>
		                                    <option value="캄보디아">캄보디아</option>
		                                    <option value="카메룬">카메룬</option>
		                                    <option value="캐나다">캐나다</option>
		                                    <option value="카보베르데">카보베르데</option>
		                                    <option value="케이맨 제도">케이맨 제도</option>
		                                    <option value="중앙아프리카 공화국">중앙아프리카 공화국</option>
		                                    <option value="차드">차드</option>
		                                    <option value="칠레">칠레</option>
		                                    <option value="중국">중국</option>
		                                    <option value="크리스마스섬">크리스마스섬</option>
		                                    <option value="코코스 제도">코코스 제도</option>
		                                    <option value="콜롬비아">콜롬비아</option>
		                                    <option value="코모로">코모로</option>
		                                    <option value="콩고 민주 공화국">콩고 민주 공화국</option>
		                                    <option value="쿡 제도">쿡 제도</option>
		                                    <option value="코스타리카">코스타리카</option>
		                                    <option value="코트디부아르">코트디부아르</option>
		                                    <option value="크로아티아">크로아티아</option>
		                                    <option value="쿠바">쿠바</option>
		                                    <option value="키프로스">키프로스</option>
		                                    <option value="체코">체코</option>
		                                    <option value="덴마크">덴마크</option>
		                                    <option value="지부티">지부티</option>
		                                    <option value="도미니카 연방">도미니카 연방</option>
		                                    <option value="도미니카 공화국">도미니카 공화국</option>
		                                    <option value="에콰도르">에콰도르</option>
		                                    <option value="이집트">이집트</option>
		                                    <option value="엘살바도르">엘살바도르</option>
		                                    <option value="적도 기니">적도 기니</option>
		                                    <option value="에리트레아">에리트레아</option>
		                                    <option value="에스토니아">에스토니아</option>
		                                    <option value="에티오피아">에티오피아</option>
		                                    <option value="포클랜드 제도">포클랜드 제도</option>
		                                    <option value="페로 제도">페로 제도</option>
		                                    <option value="피지">피지</option>
		                                    <option value="핀란드">핀란드</option>
		                                    <option value="프랑스">프랑스</option>
		                                    <option value="프랑스령 기아나">프랑스령 기아나</option>
		                                    <option value="프랑스령 폴리네시아">프랑스령 폴리네시아</option>
		                                    <option value="프랑스령 남방 및 남극">프랑스령 남방 및 남극</option>
		                                    <option value="가봉">가봉</option>
		                                    <option value="감비아">감비아</option>
		                                    <option value="조지아">조지아</option>
		                                    <option value="독일">독일</option>
		                                    <option value="가나">가나</option>
		                                    <option value="지브롤터">지브롤터</option>
		                                    <option value="그리스">그리스</option>
		                                    <option value="그린란드">그린란드</option>
		                                    <option value="그레나다">그레나다</option>
		                                    <option value="과들루프">과들루프</option>
		                                    <option value="괌">괌</option>
		                                    <option value="과테말라">과테말라</option>
		                                    <option value="건지">건지</option>
		                                    <option value="기니">기니</option>
		                                    <option value="기니비사우">기니비사우</option>
		                                    <option value="가이아나">가이아나</option>
		                                    <option value="아이티">아이티</option>
		                                    <option value="허드 맥도널드 제도">허드 맥도널드 제도</option>
		                                    <option value="바티칸 시국">바티칸 시국</option>
		                                    <option value="온두라스">온두라스</option>
		                                    <option value="홍콩">홍콩</option>
		                                    <option value="헝가리">헝가리</option>
		                                    <option value="아이슬란드">아이슬란드</option>
		                                    <option value="인도">인도</option>
		                                    <option value="인도네시아">인도네시아</option>
		                                    <option value="이슬람 공화국">이슬람 공화국</option>
		                                    <option value="이라크">이라크</option>
		                                    <option value="아일랜드섬">아일랜드섬</option>
		                                    <option value="맨섬">맨섬</option>
		                                    <option value="이스라엘">이스라엘</option>
		                                    <option value="이탈리아">이탈리아</option>
		                                    <option value="자메이카">자메이카</option>
		                                    <option value="일본">일본</option>
		                                    <option value="저지섬">저지섬</option>
		                                    <option value="요르단">요르단</option>
		                                    <option value="카자흐스탄">카자흐스탄</option>
		                                    <option value="케냐">케냐</option>
		                                    <option value="키리바시">키리바시</option>
		                                    <option value="조선민주주의인민공화국">조선민주주의인민공화국</option>
		                                    <option value="대한민국">대한민국</option>
		                                    <option value="쿠웨이트">쿠웨이트</option>
		                                    <option value="키르기스스탄">키르기스스탄</option>
		                                    <option value="라오스">라오스</option>
		                                    <option value="라트비아">라트비아</option>
		                                    <option value="레바논">레바논</option>
		                                    <option value="레소토">레소토</option>
		                                    <option value="라이베리아">라이베리아</option>
		                                    <option value="리비아">리비아</option>
		                                    <option value="리히텐슈타인">리히텐슈타인</option>
		                                    <option value="리투아니아">리투아니아</option>
		                                    <option value="룩셈부르크">룩셈부르크</option>
		                                    <option value="마카오">마카오</option>
		                                    <option value="북마케도니아">북마케도니아</option>
		                                    <option value="마다가스카르">마다가스카르</option>
		                                    <option value="말라위">말라위</option>
		                                    <option value="말레이시아">말레이시아</option>
		                                    <option value="몰디브">몰디브</option>
		                                    <option value="말리">말리</option>
		                                    <option value="몰타">몰타</option>
		                                    <option value="마셜 제도">마셜 제도</option>
		                                    <option value="마르티니크">마르티니크</option>
		                                    <option value="모리타니">모리타니</option>
		                                    <option value="모리셔스">모리셔스</option>
		                                    <option value="마요트">마요트</option>
		                                    <option value="멕시코">멕시코</option>
		                                    <option value="야프">야프</option>
		                                    <option value="몰도바">몰도바</option>
		                                    <option value="모나코">모나코</option>
		                                    <option value="몽골">몽골</option>
		                                    <option value="몬테네그로">몬테네그로</option>
		                                    <option value="몬트세랫">몬트세랫</option>
		                                    <option value="모로코">모로코</option>
		                                    <option value="모잠비크">모잠비크</option>
		                                    <option value="미얀마">미얀마</option>
		                                    <option value="나미비아">나미비아</option>
		                                    <option value="나우루">나우루</option>
		                                    <option value="네팔">네팔</option>
		                                    <option value="네덜란드">네덜란드</option>
		                                    <option value="네덜란드령 안틸레스">네덜란드령 안틸레스</option>
		                                    <option value="누벨칼레도니">누벨칼레도니</option>
		                                    <option value="뉴질랜드">뉴질랜드</option>
		                                    <option value="니카라과">니카라과</option>
		                                    <option value="니제르">니제르</option>
		                                    <option value="나이지리아">나이지리아</option>
		                                    <option value="니우에">니우에</option>
		                                    <option value="노퍽섬">노퍽섬</option>
		                                    <option value="북마리아나 제도">북마리아나 제도</option>
		                                    <option value="노르웨이">노르웨이</option>
		                                    <option value="오만">오만</option>
		                                    <option value="파키스탄">파키스탄</option>
		                                    <option value="팔라우">팔라우</option>
		                                    <option value="팔레스타인 영토">팔레스타인 영토</option>
		                                    <option value="파나마">파나마</option>
		                                    <option value="파푸아뉴기니">파푸아뉴기니</option>
		                                    <option value="파라과이">파라과이</option>
		                                    <option value="페루">페루</option>
		                                    <option value="필리핀">필리핀</option>
		                                    <option value="핏케언 제도">핏케언 제도</option>
		                                    <option value="폴란드">폴란드</option>
		                                    <option value="포르투갈">포르투갈</option>
		                                    <option value="푸에르토리코">푸에르토리코</option>
		                                    <option value="카타르">카타르</option>
		                                    <option value="레위니옹">레위니옹</option>
		                                    <option value="루마니아">루마니아</option>
		                                    <option value="러시아">러시아</option>
		                                    <option value="르완다">르완다</option>
		                                    <option value="르완다">르완다</option>
		                                    <option value="세인트키츠 네비스">세인트키츠 네비스</option>
		                                    <option value="세인트루시아">세인트루시아</option>
		                                    <option value="생피에르 미클롱">생피에르 미클롱"</option>
		                                    <option value="세인트빈센트 그레나딘">세인트빈센트 그레나딘</option>
		                                    <option value="사모아">사모아</option>
		                                    <option value="산마리노">산마리노</option>
		                                    <option value="상투메 프린시페">상투메 프린시페</option>
		                                    <option value="사우디아라비아">사우디아라비아</option>
		                                    <option value="세네갈">세네갈</option>
		                                    <option value="세르비아">세르비아</option>
		                                    <option value="세이셸">세이셸</option>
		                                    <option value="시에라리온">시에라리온</option>
		                                    <option value="싱가포르">싱가포르</option>
		                                    <option value="슬로바키아">슬로바키아</option>
		                                    <option value="슬로베니아">슬로베니아</option>
		                                    <option value="솔로몬 제도">솔로몬 제도</option>
		                                    <option value="소말리아">소말리아</option>
		                                    <option value="남아프리카 공화국">남아프리카 공화국</option>
		                                    <option value="사우스조지아 사우스샌드위치 제도">사우스조지아 사우스샌드위치 제도</option>
		                                    <option value="스페인">스페인</option>
		                                    <option value="스리랑카">스리랑카</option>
		                                    <option value="수단">수단</option>
		                                    <option value="수리남">수리남</option>
		                                    <option value="스발바르 얀마옌 제도">스발바르 얀마옌 제도</option>
		                                    <option value="에스와티니">에스와티니</option>
		                                    <option value="스웨덴">스웨덴</option>
		                                    <option value="스위스">스위스</option>
		                                    <option value="시리아">시리아</option>
		                                    <option value="대만">대만</option>
		                                    <option value="타지키스탄">타지키스탄</option>
		                                    <option value="탄자니아">탄자니아</option>
		                                    <option value="태국">태국</option>
		                                    <option value="동티모르">동티모르</option>
		                                    <option value="토고">토고</option>
		                                    <option value="토켈라우">토켈라우</option>
		                                    <option value="통가">통가</option>
		                                    <option value="트리니다드 토바고">트리니다드 토바고</option>
		                                    <option value="튀니지">튀니지</option>
		                                    <option value="터키">터키</option>
		                                    <option value="투르크메니스탄">투르크메니스탄</option>
		                                    <option value="터크스 케이커스 제도">터크스 케이커스 제도</option>
		                                    <option value="투발루">투발루</option>
		                                    <option value="우간다">우간다</option>
		                                    <option value="우크라이나">우크라이나</option>
		                                    <option value="아랍에미리트">아랍에미리트</option>
		                                    <option value="영국">영국</option>
		                                    <option value="미국">미국</option>
		                                    <option value="미국령 군소 제도">미국령 군소 제도</option>
		                                    <option value="우루과이">우루과이</option>
		                                    <option value="우즈베키스탄">우즈베키스탄</option>
		                                    <option value="바누아투">바누아투</option>
		                                    <option value="베네수엘라">베네수엘라</option>
		                                    <option value="베트남">베트남</option>
		                                    <option value="영국령 버진아일랜드">영국령 버진아일랜드</option>
		                                    <option value="미국령 버진아일랜드">미국령 버진아일랜드</option>
		                                    <option value="왈리스 푸투나">왈리스 푸투나</option>
		                                    <option value="서사하라">서사하라</option>
		                                    <option value="예멘">예멘</option>
		                                    <option value="잠비아">잠비아</option>
		                                    <option value="짐바브웨">짐바브웨</option>
		                                </select>
		                            </div>
		
		                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; margin: 0 0 0 10px;">
		                                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" style="margin: 10px 0 0 0"/>
		                                <select id="movGenre" class="country" multiple="true" style=" width: 100%; border-top-width: 0px; border-right-width: 0px;
											border-bottom-width: 0px; border-left-width: 0px; border: 1px solid rgb(255, 255, 255);">
		                                    <option value="" disabled hidden>장르</option>
		                                    <option value="액션">액션</option>
		                                    <option value="모험">모험</option>
		                                    <option value="예술">예술</option>
		                                    <option value="코미디">코미디</option>
		                                    <option value="블랙코미디">블랙코미디</option>
		                                    <option value="로멘틱 코미디">로멘틱 코미디</option>
		                                    <option value="다큐멘터리">다큐멘터리</option>
		                                    <option value="드라마">드라마</option>
		                                    <option value="코미디 드라마">코미디 드라마</option>
		                                    <option value="시대극">시대극</option>
		                                    <option value="멜로드라마">멜로드라마</option>
		                                    <option value="교육영화">교육영화</option>
		                                    <option value="판타지">판타지</option>
		                                    <option value="과학 판타지">과학 판타지</option>
		                                    <option value="누아르">누아르</option>
		                                    <option value="공포">공포</option>
		                                    <option value="뮤지컬">뮤지컬</option>
		                                    <option value="미스터리">미스터리</option>
		                                    <option value="포르노">포르노</option>
		                                    <option value="성인">성인</option>
		                                    <option value="멜로">멜로</option>
		                                    <option value="로멘스">로멘스</option>
		                                    <option value="재난">재난</option>
		                                    <option value="좀비">좀비</option>
		                                    <option value="전쟁">전쟁</option>
		                                    <option value="애니메이션">애니메이션</option>
		                                    <option value="독립">독립</option>
		                                    <option value="스포츠">스포츠</option>
		                                    <option value="음악">음악</option>
		                                    <option value="뮤지컬">뮤지컬</option>
		                                    <option value="틴에이저">틴에이저</option>
		                                    <option value="시트콤">시트콤</option>
		                                    <option value="가족">가족</option>
		                                    <option value="역사">역사</option>
		                                    <option value="독립">독립</option>
		                                    <option value="스포츠">스포츠</option>
		                                    <option value="음악">음악</option>
		                                    <option value="뮤지컬">뮤지컬</option>
		                                </select>
		                            </div>
		                            <div>
		                                <input type="text" placeholder="상영시간(ex.1시간 20분 띄어쓰기해주세요)" class="inBox1" id="movTime"/>
		                            </div>
		                            <!-- 드롭다운 -->
		                            <div>
		                                <select name="age" class="inBox1" id="movAge" onchange="changeValue(this)">
		                                    <option value="" disabled selected>연령등급</option>
		                                    <option value="전체 관람가">전체관람가</option>
		                                    <option value="12세 관람가">12세 관람가</option>
		                                    <option value="15세 관람가">15세 관람가</option>
		                                    <option value="청소년 관람불가">청소년 관람불가</option>
		                                    <option value="제한 상영가">제한 상영가</option>
		                                </select>
		                            </div>
		
		                            <div>
		                                출연/제작
		                                <p>
		                                    <button type="button" onclick="person_search_visible()" id="Mbtn">
		                                        인물검색
		                                    </button>
		                                </p>
		                            </div>

									<div id="authorBox">
									    <div class="onePersonSmallBox" v-for="person in itemlist2">
									        <div hidden class="hiddenBox" v-if="person.perJob != '감독'&&person.perCasting != ''">{{person.perIdx}}({{person.perJob}} | {{person.perCasting}})</div>
									        <div hidden class="hiddenBox" v-if="person.perJob != '감독'&&person.perCasting == ''">{{person.perIdx}}({{person.perJob}})</div>
									        <div hidden class="hiddenBox" v-if="person.perJob == '감독'">{{person.perIdx}}({{person.perJob}})</div>
									        <div class="smallProfileBox">
									            <img :src=`${person.perPhoto}` class="smallPersonSimg">
									        </div>
									        <div class="smallContentBox">
									            <b>{{person.perName}}</b>
									            <p v-if="person.perJob != '감독'&&person.perCasting != ''">({{person.perJob}} | {{person.perCasting}})</p>
									            <p v-if="person.perJob != '감독'&&person.perCasting == ''">({{person.perJob}})</p>
									            <p v-if="person.perJob == '감독'">({{person.perJob}})</p>
									        </div>
									        <div onclick="minusItemlist2(this)" type="button">
									            <img class="minus_button" src="/assets/img/x_icon.png" alt=""/>
									        </div>
									    </div>
									</div>
								</div>
								
								<div id="inputbox2">
		                            <div>
		                                <input type="text" id="movSummary" placeholder="내용" />
		                            </div>
		                            <div id="wgo">
		                                <div>감상가능한 곳</div>
		                                <div class="wgo2">
		                                    <div class="wBox_1">
		                                        <div class="wBox2">
		                                            <div>
		                                                <select name="platform" id="platform" onchange="createOtt(this.value)" class="vBox3">
		                                                    <option value="" disabled selected>플랫폼</option>
		                                                    <option value="티빙">티빙</option>
		                                                    <option value="웨이브">웨이브</option>
		                                                    <option value="디즈니플러스">디즈니플러스</option>
		                                                    <option value="왓챠">왓챠</option>
		                                                    <option value="넷플릭스">넷플릭스</option>
		                                                    <option value="쿠팡플레이">쿠팡플레이</option>
		                                                </select>
		                                            </div>
		                                            <div>
		                                                <input type="text" placeholder="URL주소" class="wBox3" id="vurl"/>
		                                            </div>
		                                        </div>
		                                        <img onclick="ottVisible()" id="ott_plus_icon" src="/assets/img/plus_outline_icon.png" alt=""/>
		                                    </div>
		                                    <div class="wBox_2">
		                                        <div id="tving_box">
		                                            <img class="ott_img"
														src="https://an2-img.amz.wtchn.net/image/v2/AmxtezC90nGQwOmwj0MCPA.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalV3TXpRMk9UQXhNVE0xTlRBNU16TTRJbjAudWd0X0VwOHg1ZDBnZTBTRjhiNkhrUG52Qzd5cndhRnl6bEt2dEZzVGhzTQ"/>
		                                            <div class="ott_name">티빙
		                                                <input type="hidden" id="tving_url" value="">
		                                            </div>
		                                            <div id="tving_box_X" onclick="delval('tving_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
		                                            </div>
		                                        </div>
		                                        <div id="wave_box">
		                                            <img class="ott_img" src="https://an2-glx.amz.wtchn.net/images/ex_wavve_logo_square.png" alt=""/>
		                                            <div class="ott_name">웨이브
		                                                <input type="hidden" id="wave_url" value=""></div>
		                                            <div id="wave_box_X" onclick="delval('wave_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
		                                            </div>
		                                        </div>
		                                        <div id="disney_box">
		                                            <img class="ott_img"
		                                            	src="https://an2-img.amz.wtchn.net/image/v2/ryWIr0pNWgEBU-qIsDRsYw.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalF5TURZME16SXlPVEUxT0RJNE9EazFJbjAuVEM5ZjBaTnBlUmM5MklUTWdVakxmM3BieElmaTFHLTNWc0d2RUxqa3FDSQ"/>
		                                            <div class="ott_name">디즈니+
		                                                <input type="hidden" id="disney_url" value=""></div>
		                                            <div id="disney_box_X" onclick="delval('disney_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
		                                            </div>
		                                        </div>
		                                        <div id="watcha_box">
		                                            <img class="ott_img" src="https://an2-glx.amz.wtchn.net/images/ex_watcha_logo_square.png" alt=""/>
		                                            <div class="ott_name">왓챠
		                                                <input type="hidden" id="watcha_url" value=""></div>
		                                            <div id="watcha_box_X" onclick="delval('watcha_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
		                                            </div>
		                                        </div>
		                                        <div id="netflix_box">
		                                            <img class="ott_img" src="https://an2-glx.amz.wtchn.net/images/ex_netflix_logo_square.png" alt=""/>
		                                            <div class="ott_name">넷플릭스
		                                                <input type="hidden" id="netflix_url" value=""></div>
		                                            <div id="netflix_box_X" onclick="delval('netflix_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
		                                            </div>
		                                        </div>
		                                        <div id="coupang_box">
		                                            <img class="ott_img"
														src="https://play-lh.googleusercontent.com/K0qCnn2q_LsH9MlnkWjnsQ22p52G8c3KH6WdnxIdcUdUwlwxpdpOX_34GWGxQQtA504b"/>
		                                            <div class="ott_name">쿠팡플레이
		                                                <input type="hidden" id="coupang_url" value=""></div>
		                                            <div id="coupang_box_X" onclick="delval('coupang_url')">
		                                                <img class="x_icon" src="/assets/img/x_icon.png" alt=""/>
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
		                                                <label for="inputFile">파일 선택</label>
		                                                <input type="file" accept=".jpg, .jpeg, .png, .gif" id="inputFile"/>
		                                                <div id="total_file_info">
		                                                    <span id="file_count">선택된 파일 없음</span>
		                                                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;총 용량
		                                                    <span id="total_size" style="color: red">0</span
		                                                    >KB
		                                                </div>
		                                            </div>
		                                            <div id="resultFile" >
		                                                <p class="file" >파일 끌어다 추가하기</p>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="conzone">
		                                    동영상
		                                    <div id="vBox">
		                                            <div class="vBox1">
		                                                    <div>
		                                                        <input type="text" placeholder="제목(ex.메인예고편, 현장예고편)" class="vBox2" id="vt0"/>
		                                                    </div>
		                                                    <div>
		                                                        <input type="text" placeholder="URL주소" class="vBox2" id="vu0"/>
		                                                    </div>
		                                            </div>
		                                        <div id="only_flex_box">
		                                            <div id="plus" onclick="add()" type="button">
		                                                <img id="plus_img" src="/assets/img/plus_outline_icon.png" alt=""/>
		                                            </div>
		                                            <div id="minus" onclick="minus()" type="button">
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
		                            포스터
		                            <span style="color: red; font-size: smaller; margin: 0 0 0 37%">
		                            	*1개의 파일만 등록가능합니다.
		                            </span>
		                            <div id="poBox">
		                                <label for="pobtn">파일 선택 </label>
		                                <!--당겼을때 출력-->
		                                <input type="file" accept=".jpg, .jpeg, .png, .gif" id="pobtn" onchange="readLink(this);"/>
		                                <div id="poBox2">
		                                    <p class="file">파일 끌어다 추가하기</p>
		                                </div>
		                            </div>
		                        </div>
		                        <div id="ba">
		                            배경사진
		                            <span style="color: red; font-size: smaller; margin: 0 0 0 37%">
		                            	*1개의 파일만 등록가능합니다.
		                            </span>
		                            <div id="baBox" >
		                                <label for="babtn">파일 선택</label>
		                                <input type="file" accept=".jpg, .jpeg, .png, .gif" id="babtn" onchange="readLink1(this);"/>
		                                <div id="baBox2">
		                                    <p class="file">파일 끌어다 추가하기</p>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <div id="MBox">
		                    <button id="btn1" onclick="sendit()">등록하기</button>
		                    <button id="btn2" onclick="history.back()">취소하기</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
		<script defer src="/js/Movie_Edit.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
		<script src="/assets/demo/chart-area-demo.js"></script>
		<script src="/assets/demo/chart-bar-demo.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
		<script src="/js/datatables-simple-demo.js"></script>
	</body>
</html>