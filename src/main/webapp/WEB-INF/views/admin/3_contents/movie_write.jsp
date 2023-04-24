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
	    		$(".writeBtn").click(function() {
	    			/* alert("입력된 영화정보를 등록합니다"); */
	    			movieWrite.submit();
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
		                <form action="/admin/3_contents/movie_write" method="post" name="movieWrite">
		                <input type="hidden" method="post" name="id" value="${ movieVo.id }">
		                <div class="card">
		                    <div class="card-header">
		                        <i class="fas fa-table me-1"></i>
		                        영화
		                    </div>
		                    <div class="card-body">
		                        <div id="inputbox">
		                            &nbsp;&nbsp;&nbsp;기본정보
		                            <div>
		                                <input type="text" name="movie_kor_title" placeholder="표기할 영화제목" class="inBox1" id="movTitle" value="" required/>
		                            </div>
		                         
		                            <div>
		                                <input type="text" name="movie_original_title" placeholder="원제" class="inBox1" id="movTitleOrg" value=""/>
		                            </div>
		                         
		                            <div>
		                                <input type="text" name="movie_release_date" placeholder="개봉 날짜 (YYYY-MM-DD)" class="inBox1" id="movMakingDate" value="" required/>
		                            </div>
		                         
		                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; height: 50px; margin: 0 0 0 10px;">
			                            <select multiple="multiple" name="name_kor" id="name_kor" class="country" style="width: 100%; height: 50px; border: 1px solid rgb(255, 255, 255);">
			                            	<option value="" selected>국가선택</option>
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
		                                <input type="text" name="movie_running_time" placeholder="상영시간(ex.분 단위로 환산하여 숫자만 입력)" class="inBox1" id="movTime" value=""/>
		                            </div>
		                            <div>
		                                <select name="movie_grade" class="inBox1" id="movAge" onchange="changeValue(this)">
		                                    <option value="" selected>연령등급</option>
		                                    <option value="all">전체관람가</option>
		                                    <option value="U12">12세 관람가</option>
		                                    <option value="U15">15세 관람가</option>
		                                    <option value="U19">청소년 관람불가</option>
		                                    <option value="19over">제한 상영가</option>
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
		                                	</tbody>
		                                </table>
		                            </div>
		                        </div>
		                        <div id="inputbox2">
		                            <div>
		                                <input type="text" name="movie_desc" id="movSummary" placeholder="등록된 영화내용이 없습니다" />
		                            </div>
		                            <div id="wgo">
		                                <div>감상가능한 곳</div>
		                                <div class="wgo2">
		                                    <div class="wBox_1" style="width:95%;">
		                                        <div class="wBox2">
		                                            <div class="container" style="padding-right: 0px; padding-left: 0px; width: 95%; margin: 0 0 0 10px;">
		                                				<select multiple="multiple" name="ott_id" id="ott_id" class="country" style=" width: 100%; height: 50px; border: 1px solid rgb(255, 255, 255);">
		                                                    <option value="">OTT플랫폼 선택</option>
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
		                                    <input type="text" name="movie_post_url" class="inBox1" placeholder="포스터 url을 입력해주세요" value="">
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
		                                    <input type="text" name="background_post_url" class="inBox1" placeholder="배경사진 url을 입력해주세요" value="">
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                </form>
		                <div id="MBox">
		                    <button id="btn1" class="writeBtn">등록하기</button>
		                    <button id="btn2" onclick="location.href='/admin/3_contents/movie_list'">취소하기</button>
		                </div>
		            </div>
		        </main>
		    </div>
		</div>
	</body>
</html>