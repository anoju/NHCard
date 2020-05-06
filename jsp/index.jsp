<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="./include/meta.jsp" %>
<!-- 공통이 아닌 추가meta태그(기타 meta태그는 여기에~) -->
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<!-- //공통이 아닌 추가meta태그 -->

<%@ include file="./include/head.jsp" %>
<!-- 공통이 아닌 추가css,스크립트는 여기에~~ -->
<script>
	$(function(){
		common.title('페이지 제목입니다.');
	});
</script>
<!-- //공통이 아닌 추가css,스크립트는 여기에~~ -->
</head>
<body>
<article id="wrap">
	<%@ include file="./include/top.jsp" %><!-- 헤더: 화면마다 헤더가 달라집니다. 총 4개 형태(top.jsp,top_logo.jsp,top_close.jsp,top_menu.jsp) -->
	<%@ include file="./include/gnb.jsp" %><!-- 전체메뉴: 구조 미확정 -->

	<!-- 컨텐츠 시작 -->
	<div id="container">
		<section id="contents">
			<div class="section">
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
			</div>
		</section>
	</div>
	<!-- //컨텐츠 끝  -->

	<!-- 팝업 넣는 영역 -->
	<!-- #container 밖에(여기에) 넣어주세요 -->
	<!-- //팝업 넣는 영역  -->

	<%@ include file="./include/footer.jsp" %><!-- 푸터: 구조 미확정 -->
</article>
</body>
</html>