<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="../css/announcement_SH.css" rel="stylesheet" type="text/css">
<body>
	<!-- 설정 톱니바퀴 팝업창 CSS -->


	<!--announcement 팝업 창 띄우기/내리기 스크립트  -->
	<script type="text/javascript">
			$(function() {
				/* 설정 창 띄우기 */
					$("#announcement_open_Btn").click(function() {
						if ( $(".announcement").css("display") == "none" ) { $(".announcement").show(); }
					});
				
				/* 설정 창 내리기 */
				$("#announcement_close_Btn").click(function() {
					if ( $(".announcement").css("display") != "none" ) { $(".announcement").hide(); }
				})
			});
	</script>

	<!--기사(article) 상세 띄우기/접기  -->
	<script type="text/javascript">
 $(document).ready(function() {
	  $('.css-10c763p-StylelessButton').click(function() {
	    var li = $(this).parent();
	    var div = $(this).next('.css-xrw3e9');
	    var article = div.find('.css-1u4x0ui');
	    if (li.hasClass('css-15gurup-StyledCollapseListItem')) {
	      li.removeClass('css-15gurup-StyledCollapseListItem').addClass('css-7zhfhb');
	      width=article.width()+100;
	      height=article.height()+100;
	      div.css('height', height);
	    } else if (li.hasClass('css-7zhfhb')) {
	      li.removeClass('css-7zhfhb').addClass('css-15gurup-StyledCollapseListItem');
	      div.css('height', '0');
	    }
	  });
	});

</script>






	<script>

  let modalList = createApp({
    data() {
      return {
        main_modal: false,
        notice_signal: false,
      };
    },
    methods: {
      main_modal_change() {
        this.main_modal = !this.main_modal;
      },
      notice_change() {
        this.notice_signal = !this.notice_signal;
      }
    },
  }).mount("#app");

  document.addEventListener("click",(e)=>{
    if(document.querySelector("#modal-container-gaaIcctt8e6Uqo5nHzT52") &&
            modalList.notice_signal == false){
      if(!document.querySelector("div.css-ikkedy").contains(e.target)){
        modalList.main_modal = false;
      }
    }

    if(modalList.notice_signal == true) {
      if(!document.querySelector(".css-8kej5s").contains(e.target)){
        modalList.notice_signal = false;
      }
    }
  },true)
  
  
</script>
	<!-- 공지사항 팝업 열림! -->
	<div class="announcement">
		<div id="modal-container-thg3K61bbP9KCrJxZTi2q" class="css-rpyl6s">
			<div class="css-8kej5s">
				<header title="공지사항" class="css-ho1v2y-HeaderBarPrimitive">
					<div @click="notice_change" class="css-19pxr9t"
						id="announcement_close_Btn">
						<button aria-label="close"
							class="css-1d7tft4-StylelessButton-HeaderCloseButtonSelf e1k34u8y0"></button>
					</div>
					<em class="css-5pjt39">공지사항</em>
					<div class="css-19pxr9t"></div>
				</header>
				<div class="css-1s8we4x">
					<ul class="css-10n5vg9-VisualUl ep5cwgq0">
						<div class="css-1gkas1x-Grid e1689zdh0">
							<div class="css-1y901al-Row emmoxnt0">
								<li class="css-15gurup-StyledCollapseListItem">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">🎥 왓챠 개봉관 론칭 기념 20% 할인🎉</div>
											<div class="css-189e8d8">2022.12.14</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/G3D-wj9-2lauDCyrSAwn2w.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOamN3T1RneU5EUXpOVGMyTVRrME56STFJbjAuTzRFVUE5UXZBemxEN3lUSVA3SzBQT3BLaE5xaGdQb294Q0RzUEpwUXJjYw"
												style="max-width: 600px" /></a> 🎥 왓챠 개봉관은 극장에서 놓친 최신 영화들을 볼 수
											있는 서비스에요. 왓챠를 구독하지 않아도 원하는 콘텐츠를 개별 구매하여 볼 수 있어요! 🍿 결제 및 감상:
											왓챠 웹페이지, 스마트TV 왓챠 앱 *왓챠 개봉관 모바일 앱은 조금만 더 기다려주세요! 곧 만나요👋 🍿
											할인 대상 콘텐츠: <a href="https://wcha.it/3WrEHYZ" target="_blank">
												▶[전체 보기] </a> 🍿 결제 가능 수단: 신용카드 및 카카오페이 🍿 할인 기간: 2022. 12. 15 ~
											2023. 1. 31 영화관 갈 필요 없이 편안하게 최신 개봉작을 고화질로 즐기고 싶다면, 지금 왓챠! <a
												style="box-sizing: border-box; background-color: #fe3f6f; border: none; border-radius: 4px; color: #fff !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="https://watcha.com/browse/theater" target="_blank">왓챠
												개봉관 보러가기</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">[작업공지] 22년 11월 23일(수) 왓챠피디아
												서비스 정기점검 안내</div>
											<div class="css-189e8d8">2022.11.18</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">안녕하세요. 왓챠피디아입니다. 서비스
											점검으로 인해 해당 시간 동안 간헐적으로 서비스 이용이 제한될 수 있는 점 참고 부탁드립니다. - 작업 시간:
											2022년 11월 23일(수) 05:00 ~ 05:30 (약 30분) - 작업 내용: 정기 점검 및 유지보수
											- 작업 영향도: 간헐적인 서비스 중단 더 좋은 서비스를 제공해 드릴 수 있도록 최선을 다하는 왓챠피디아가
											되겠습니다. 감사합니다. 왓챠피디아 팀 드림</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">제2회 도전~ 왓챠벨!</div>
											<div class="css-189e8d8">2022.08.31</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/NxHeWuZ5sER7bI2gBOs7Jw.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOall4T1RNeU9EZ3hPRFE0TmpjNU5qSTFJbjAuNFdRbE4xWHZRQXFDV0dKQk95RXd3anQybkZDa2JQYkJvN2oxekdpbEdRVQ"
												style="max-width: 600px" /></a> <strong> 🔔 제2회 도전,
												왓챠벨! 🔔</strong> 호응에 힘입어 2회차를 맞이하는 왓챠벨! <strong>'해외 영화 좀 보신
												분들'</strong> 특히 이번 왓챠벨을 주목해주세요! 이번에도 결코 쉽진 않겠지만 여러분의 센스를 믿습니다! 제2회
											왓챠벨은 과연 몇 번이나 울릴지~ 기대해볼게요! 화이팅! <a
												style="box-sizing: border-box; background-color: #16735c; border: none; border-radius: 4px; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="https://quiz.watcha.io/quiz/wb2?browser_open_type=external"
												target="_blank">왓챠벨 도전하기</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">제 1회 도전~ 왓챠벨!</div>
											<div class="css-189e8d8">2022.07.20</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/PTGGsZoCF4667U7jm4ORuQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1KbklsMHNJbkFpT2lJdmRqSXZjM1J2Y21VdmRXbHRZV2RsTHpFMk5UZ3pNREV5TXpnME5URTJPVGs0TmpnaWZRLm40T1R5OTNXXzFXTWNvZ1VlM251SDdFbjc4M1FURE5kMEtyV24yTlczNVk"
												style="max-width: 600px" /></a> <strong> 🔔 도전, 왓챠벨을
												울려라! 🔔</strong> '나 영화 좀 봤다' 하시는 분? '나 센스도 좀 있는데' 하시는 분? 여러분을 위해 왓챠가
											준비한 영화 퀴즈, 왓챠벨! 아 이건 쉽지! 하는 문제부터 긴가민가 기억을 되살려야 하는 문제들까지. 왓챠배
											영화 퀴즈 <strong>제1회 왓챠벨</strong>이 시작되었습니다. 과연 왓챠벨은 몇 번이나 울릴 수
											있을까요? 지금 바로, <strong>도전~ 왓챠벨! </strong> 🙋 <a
												style="box-sizing: border-box; background-color: #ff0558; border: none; border-radius: 4px; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="https://quiz.watcha.io/quiz/wb1?browser_open_type=external"
												target="_blank">왓챠벨 도전하기</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">[왓챠 오리지널] 〈최종병기 앨리스〉 독점 공개!</div>
											<div class="css-189e8d8">2022.06.17</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/6JJcQsHTHiiBKoaFsA49Qw.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalUxTnprNE1ETTNOelV5T0RBME5EQTRJbjAucVZXRUhDS1hfVTNuOUdQaGFhdjFCbGs4a2t4VWtfMEZXSDJ2aXUxQnlRUQ"
												style="max-width: 600px" /></a> <strong>“핑크빛인 줄 알았다,
												아니 핏빛이었다.”</strong> 비폭력으로 학교 평정! 잘생긴 또라이 <strong>‘여름’</strong> 정체를 숨긴
											본투비 킬러🔫 <strong>‘겨울’</strong> (aka. 앨리스) 평범하게(?) 살고 싶은 싸움
											만렙들의 꽁냥꽁냥 핑크빛 학교생활💕이 될 줄 알았으나.. 미치광이 킬러의 등장으로 둘의 세계는 점점 핏빛으로
											물들기 시작한다. 누군가 죽어야 끝나는 추격전에서 둘은 살아남을 수 있을까? 예측 불가 장르 반전! 하드코어
											액션 로맨스🩸 <strong>〈최종병기 앨리스〉</strong> <a
												style="box-sizing: border-box; background-color: #d87561; border: none; border-radius: 4px; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="https://watcha.com/contents/tEojz4y?browser_open_type=external"
												target="_blank">지금 왓챠!</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">[왓챠 오리지널] 〈지혜를 빼앗는 도깨비〉 독점 공개!
											</div>
											<div class="css-189e8d8">2022.05.02</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/RlNwaFEEVEMXggrXSikrlQ.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalV4TVRNM05EUTJNREkxT0Rrek9EWXpJbjAuel9aamtsNEpCMnhBX2h5ZkZ4TkFWOHhrZmdPeU9ZYWIwQ29yYXVfRHRFMA"
												style="max-width: 600px" /></a> 점마 데려와!😈 성공한 인간들만 죄다 납치해 지혜를
											빼앗는 도깨비들이 나타났다! <strong>강호동 X 이용진 X 양세찬</strong> 예능계 제일 핫한
											3인방이 왓챠 오리지널에?🫢 저세상 하이텐션 강깨비, 미워할 수 없는 마성의 빌런 용깨비, 궁금한 건 냅다
											캐묻는 양깨비까지! 깨발랄 찰떡 케미, 안 보고는 못 참겠쥐~? <strong>월클 아이돌부터
												자수성가 아이콘까지!</strong> 왓챠의 아들 남현우 &amp; 박재찬 배우, 한 회사의 주가를 오르내리게 한 이지영
											강사에 대세돌 세븐틴 완전체까지! 특급 게스트들의 기상천외한 입담, 기대해도 좋을 거예요😉 매주 화요일 오후
											5시 <strong>〈지혜를 빼앗는 도깨비〉</strong> 성공한 인간들의 지혜를 뺏어보자구, 뚝딱-! <a
												style="box-sizing: border-box; background-color: #6cd290; border: none; border-radius: 4px; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="https://watcha.com/contents/tlYey6A?browser_open_type=external"
												target="_blank">지금 왓챠!</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">#헐왓챠에 이동진 유튜브 라이브 코멘터리 - 영화
												⟨지구 최후의 밤⟩</div>
											<div class="css-189e8d8">2022.04.25</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/HewnTh-r-K7A7R6evqpSVg.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalV3T0RjMU5qSXpOemN6TVRrd05EQTFJbjAuN3RhSldtODFEeUVxYnI4LVdVWWc0dlF3MVJxYVNvdnFKT2RscXU1a1VxVQ"
												style="max-width: 600px" /></a> "점멸하는 기억과 발광하는 꿈이 함께 서식하는 신비로운
											세계"- 이동진 평론가 이동진 평론가의 평마저 어려운 이 영화, <strong> 4월 28일
												목요일 밤 10시</strong>에 직접 설명해드립니다🎙 ⠀ 📌<strong> 4월 28일 (목) 밤
												10시 </strong> 📌 <strong><a
												href="https://youtu.be/ahgIayFj2vQ?browser_open_type=external"
												target="_blank">왓챠 유튜브 라이브 바로가기 </a></strong><a
												href="https://youtu.be/ahgIayFj2vQ?browser_open_type=external"
												target="_blank"> </a> 📌 왓챠 유튜브 좋아요, 구독, 알림 설정은 필수 ! ⠀ <strong>
												라이브 전 꿀팁 🍯 </strong> 라이브로 이동진 평론가에게 직접 영화에 관해 질문할 수 있는 시간이 준비되어 있어요!
											왓챠에서 먼저 작품을 감상하고 참여하면, 더욱 더 유익한 시간이 될 거예요! 📌<a
												href="https://wcha.it/3vy1KFA?browser_open_type=external"
												target="_blank"> <strong>꿈과 현실의 경계를 넘나드는 🌎⟨지구
													최후의 밤⟩ 예습하기 </strong>
											</a> ⠀ 4월 28일 목요일 밤 10시, 왓챠 유튜브에서 만나요!
											<div style="margin-top: 5px; margin-bottom: 5px"></div>
											<a
												style="box-sizing: border-box; background-color: #e33d25; border: none; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; border-radius: 4px; line-height: 17px; letter-spacing: -0.4px; box-shadow: inset 0px -2px 0px 0px rgba(0, 0, 0, 0.08); max-width: 600px;"
												href="https://youtu.be/ahgIayFj2vQ?browser_open_type=external">라이브
												참여하기</a>
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">왓챠, 왓챠피디아 &lt;개인정보처리방침&gt; 개정
												안내</div>
											<div class="css-189e8d8">2022.04.04</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											안녕하세요. 왓챠피디아입니다. 왓챠, 왓챠피디아 &lt;개인정보처리방침&gt;에 아래와 같은 내용이 개정되어
											안내해 드리니, 이용에 참고하여 주시기 바랍니다. - 개정 시행일자: 2022년 4월 12일 - 개정 내용
											1. 회원의 권리 행사 관련한 고객센터 연락처 정보의 보완(제8조 제2항, 제14조) 2. 위수탁 업체 정보
											업데이트 및 국외 위탁 추가(제7조) (변경 전) 제 7조 개인정보의 처리 위탁 4항. 상담을 위한 고객센터
											툴(tool) - 수탁업체: Zendesk, Inc, (주)굿텔레콤 - 위탁업무 내용: 문의 접수 및 처리를
											위한 고객센터 tool 제공 제 8조 회원 및 법정 대리인의 권리와 그 행사방법 2항.회원 및 법정대리인은
											고객센터에 웹 문의, 서면, 전화, 전자우편을 통하여 본인(법정대리인의 경우는 아동)의 개인정보의 조회,
											수정, 삭제를 요청할 수 있습니다. 고객센터는 회원 또는 법정대리인의 권리 행사에 대하여 지체없이 조치하고
											처리 결과를 안내합니다. 제 14조 개인정보 침해 관련 상담 및 신고 회사는 회원의 의견을 소중하게
											생각합니다. 회사가 운영중인 서비스에 대하여 문의사항이 있을 경우 고객센터 등에 문의하시면 신속/정확한 답변을
											드리겠습니다. 회사는 원활환 의사소통을 위해 고객상담센터를 운영하고 있으며 연락처는 다음과 같습니다.
											[고객상담센터] - 전화번호: 02-515-9985 - 팩스번호: 02-3478-2202 - 전자우편:
											cs@watchapedia.co.kr - 사업자 주소: 서울특별시 서초구 강남대로343 신덕빌딩 3층 (변경
											후) 제 7조 개인정보의 처리 위탁 및 국외 이전 4) 상담을 위한 고객센터 툴(tool) - 수탁업체:
											(주)굿텔레콤 - 위탁업무 내용: 문의 접수 및 처리를 위한 고객센터 tool 제공 제 8조 회원 및 법정
											대리인의 권리와 그 행사방법 2항.회원 및 법정대리인은 제14조에 기재된 고객센터에 웹 문의, 서면, 전화,
											전자우편의 방법으로 본인(법정대리인의 경우는 아동)의 개인정보의 조회, 수정, 삭제를 요청할 수 있습니다.
											고객센터는 회원 또는 법정대리인의 권리 행사에 대하여 지체없이 조치하고 처리 결과를 안내합니다. 제 14조
											개인정보 침해 관련 상담 및 신고 회사는 회원의 의견을 소중하게 생각합니다. 회사가 운영중인 서비스에 대하여
											문의사항이 있을 경우 고객센터 등에 문의하시면 신속/정확한 답변을 드리겠습니다. 회사는 원활환 의사소통을 위해
											고객상담센터를 운영하고 있으며 연락처는 다음과 같습니다. [고객상담센터] - 전화번호: 02-515-9985
											- 팩스번호: 02-3478-2202 - 전자우편: cs@watchapedia.co.kr - 웹문의: <a
												href="https://help.pedia.watcha.co.kr/hc/ko/requests/new"><u>
													https://help.pedia.watcha.co.kr/hc/ko/requests/new</u></a> - 주소:
											서울특별시 서초구 강남대로 343 신덕빌딩 3층 왓챠 고객센터 (우 06626) (추가) 제 7조 개인정보의
											처리 위탁 및 국외 이전 2.항 개인정보 처리 위탁 중 국외에서 처리하는 위탁업무는 아래와 같습니다. 1)
											이전 받는 업체명 및 연락처: Zendesk Inc.,
											(https://www.zendesk.com/contact/) - 이전되는 국가: 미국 - 이전 일시 및
											방법: 고객센터 이용 시점에 네트워크를 통한 전송 - 이전되는 개인정보 항목: 이름, 이메일, 기기정보, 구독
											상태, 문의 내용 - 이전 받는 자의 이용 목적 및 보유∙이용 기간: 개인정보 보관 기간 동안 문의 응대 2)
											이전 받는 업체명 및 연락처: The Rocket Science Group LLC
											(https://mailchimp.com/contact/) - 이전되는 국가: 미국 - 이전 일시 및 방법:
											서비스 이용 시점에 네트워크를 통한 전송 - 이전되는 개인정보 항목: 닉네임, 이메일, 국가 - 이전 받는
											자의 이용 목적 및 보유∙이용 기간: 개인정보 보관 기간 동안 결제 등 안내 메일 발송 앞으로도 왓챠피디아는
											회원님들의 개인 정보를 안전하게 관리하기 위해 최선을 다하며, 편리하고 안정적인 서비스로 회원님들의 성원에
											보답하겠습니다. 감사합니다. 왓챠피디아 팀 드림
										</article>
									</div>
								</li>
								<li class="css-7zhfhb">
									<button class="css-10c763p-StylelessButton">
										<div class="css-16n7opc">
											<div class="css-17yc0sg">[왓챠 첫 오리지널 다큐] 〈한화이글스: 클럽하우스〉
												왓챠 독점 공개!</div>
											<div class="css-189e8d8">2022.03.22</div>
										</div>
										<div class="css-0">
											<span
												src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxwYXRoIGZpbGw9IiNBMEEwQTAiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjAxIDE0LjE5Mkw3LjQxNCA5LjU5NiA2IDExLjAxbDUuMzAzIDUuMzA0LjcwNy43MDcgNi4wMS02LjAxLTEuNDEzLTEuNDE1LTQuNTk3IDQuNTk2eiIvPgo8L3N2Zz4K"
												class="css-9ocudk"></span>
										</div>
									</button>
									<div class="css-xrw3e9">
										<article class="css-1u4x0ui">
											<a><img
												src="https://an2-img.amz.wtchn.net/image/v2/HEH0zvpb7_qJ2FjDIjTboA.png?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKd0lqb2lMM1l5TDNOMGIzSmxMM1ZwYldGblpTOHhOalEzT0RNeE9UTXdNakU0TVRNMk5qTXlJbjAuMkRQaWEtemVfZTg0TTRuSFY4ajREYWN3M29iM2dzRlhFTDRTbVZLWGxIZw	"
												style="max-width: 600px" /></a> <strong>한화이글스 리빌딩의 치열한
												기록</strong> 감독, 대표이사, 코치진 전면 교체 및 베테랑 선수들의 은퇴. KBO 사상 초유 리그 중단 사건,
											갑작스런 트레이드와 FA의 순간 등 한화이글스 팬이라면 모두 지켜봤을 다사다난 리빌딩 첫해. 스프링캠프부터
											시즌 종료까지 총 144경기. 3,845시간의 기록. 이 모든 환희와 절망, 열망의 순간을 담았다! <strong>야구팬들도
												몰랐던, 현실판 스토브리그</strong> 지난 성적에 대한 뼈아픈 반성부터 새 시스템을 구축하는 프런트의 전략 회의, 경기
											결과에 따라 희비가 엇갈리는 선수단과 코칭스태프, 잇따른 선수들의 부상과 연패 속에 고뇌하는 모습, 신인 선수
											드래프트 과정 등 야구팬들도 궁금했을 비하인드, 지금 공개됩니다! 지금까지 본 적 없는 리얼 야구 <strong>〈한화이글스:
												클럽하우스〉</strong> <a
												style="box-sizing: border-box; background-color: #fd1864; border: none; border-radius: 4px; color: white !important; padding: 12px 11px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; width: 100%; cursor: pointer; line-height: 17px; letter-spacing: -0.4px; max-width: 600px;"
												href="watcha://contents/tlxknJJ" target="_blank">지금 왓챠!</a>
										</article>
									</div>
								</li>
							</div>
						</div>
						<div class="css-1thiwcu-StyledInfinityScroll eu826xw0"></div>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 공지사항 팝업 닫힘! -->
</body>
</html>