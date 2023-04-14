<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>왓챠피디아 - 영화, 책, TV 프로그램 추천 및 평가 서비스</title>
    <link href="/css/searchPerson_SY.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="/css/header.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	 $(function(){
		 
		 $("#contents").click(function(){
			// alert("contents");
			 location.href = "/search/searchContents_GC?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=contents";
		 });
		 $("#collection").click(function(){
			 //alert("collection");
			 location.href = "/search/searchCollection_HY?searchKeyword=" + encodeURIComponent("${param.searchKeyword}") + "&category=collection";
		 });
	 });
	</script>
    
</head>
<body>
    <div id="root">
        <div class="css-5jq76">
            <div class="css-1xm32e0">
   			<!-- header start -->
			<%@ include file="../head_foot/header.jsp"%>
			<!-- header end -->
                <section class="css-18gwkcr">
                    <div class="css-gmvrme">
                        <div class="css-r2dzai">
                            <div class="css-74g0cg">
                                <div class="css-lw0ve8">
                                    <form action="#">
                                    	<label class="css-1rz7rw1">
                                            <div class="css-1smbjja">
                                           	 	<input autocomplete="off"  placeholder="콘텐츠, 인물, 컬렉션, 유저를 검색해보세요." type="text" name="searchKeyword" class="css-ibgwco" value="아바타">
                                           	</div>
                                            <div value="true" class="css-1ax2scd">
                                            	<span aria-label="clear" role="button" class="css-qe0tnm"></span>
                                            </div>
                                        </label>
                                     </form>
                                     <button class="css-ozvtwa-StylelessButton">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <section class="css-le8j8b">
                        <div class="css-1jehmiq">
                            <div class="css-10zg79x-pageMarginStyle">" ${param.searchKeyword}" 의 검색결과</div>
                        </div>
                        <div class="css-15qcwbn-StyledTabBarContainer e1szkzar1">
                            <ul class="css-1gwdxtz-VisualUl-StyledTabBarUl e1szkzar2">
                                <li class="css-4tchbd-StyledTab e1szkzar0" id="contents">콘텐츠</li>
                                <li class="css-s8lqsd-StyledTab e1szkzar0" id="person">인물</li>
                                <li class="css-4tchbd-StyledTab e1szkzar0" id="collection">컬렉션</li>
                            </ul>
                        </div>
                        <div class="css-ipmqep-StyledTabContentContainer e1szkzar3">
                            <div class="css-12hxjcc-StyledHideableBlock e1pww8ij0">
                                <div class="css-1djzg97">
                                    <ul class="css-paz4zm-VisualUl">
                                    	<c:forEach items= "${actorSearchlist}" var ="avo" >
	                                        <li class="css-1tmgvat">
	                                        	<a title="${avo.actor_name}" class="css-1aaqvgs-InnerPartOfListWithImage" href="/person/person_detail_ACTOR_HY?actor_name=${avo.actor_name}&id=${avo.id}&role=배우">
	                                                <div class="css-cssveg">
	                                                    <div class="css-17ob1ac">
	                                                        <div class="css-1e8dv1-ProfilePhotoImage"></div>
	                                                        <div class="css-1dtdviq">
	                                                        	<img src="${avo.actor_post_url}" alt="${avo.actor_name}의 사진" class="css-ssea8o">
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                                <div class="css-zoy7di">
	                                                    <div class="css-qkf9j">
	                                                        <div class="css-17vuhtq">
	                                                            <div class="css-515bkd">${avo.actor_name}</div>
	                                                        </div>
	                                                        <div class="css-1evnpxk-StyledSubtitle">
	                                                            <div class="css-qzyxgk">
		                                                            <span class="css-htvp8y">배우</span>
		                                                            <span class="css-1jpatke"> ・ </span>
		                                                            <span class="personContents css-yn5nfu" title="${avo.actor_name}"></span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                    <div></div>
	                                                </div>
	                                            </a>
	                                         </li>
                                         </c:forEach>
                                    	<c:forEach items= "${directorSearchlist}" var ="dvo" >
	                                        <li class="css-1tmgvat">
	                                        	<a title="${dvo.director_name}" class="css-1aaqvgs-InnerPartOfListWithImage" href="/person/person_detail_DIRECTOR_HY?director_name=${dvo.director_name}&id=${dvo.id}&role=감독">
	                                                <div class="css-cssveg">
	                                                    <div class="css-17ob1ac">
	                                                        <div class="css-1e8dv1-ProfilePhotoImage"></div>
	                                                        <div class="css-1dtdviq">
	                                                        	<img src="${dvo.director_post_url}" alt="${dvo.director_name}의 사진" class="css-ssea8o">
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                                <div class="css-zoy7di">
	                                                    <div class="css-qkf9j">
	                                                        <div class="css-17vuhtq">
	                                                            <div class="css-515bkd">${dvo.director_name}</div>
	                                                        </div>
	                                                        <div class="css-1evnpxk-StyledSubtitle">
	                                                            <div class="css-qzyxgk">
		                                                            <span class="css-htvp8y">감독</span>
		                                                            <span class="css-1jpatke"> ・ </span>
		                                                            <span class="personContents css-yn5nfu" title="다바타 신타로"></span>
	                                                            </div>
	                                                        </div>
	                                                        <div class="css-v9psum">
	                                                            <div title="다바타 신타로" class="css-txztjz">
	                                                            	<span class="css-mudjgk"></span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                    <div></div>
	                                                </div>
	                                            </a>
	                                         </li>
                                         </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div hidden="" class="css-d1dfdp-StyledHideableBlock e1pww8ij0">
                                <section class="css-1aogsz3">
                                    <div class="css-z1bhn7-Self ey90tni0">
                                        <div class="css-2kgnjb"></div>
                                        <div class="css-1yxwu9j-Message ey90tni1">검색 중..</div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </section>
                </section>
            </div>
        </div>
    </div>
    <div id="fb-root" class=" fb_reset">
        <div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
            <div></div>
        </div>
    </div>
</body>
</html>