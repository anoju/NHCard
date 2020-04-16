<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="./include/meta.jsp" flush="false" />
<title>농협카드 모바일</title>
<jsp:include page="./include/head.jsp" flush="false" />
<script>
	$(function(){
		common.title('페이지 제목입니다.');
	});
</script>
</head>
<body>
<article id="wrap">
	<jsp:include page="./include/top.jsp" flush="false" /><!-- 헤더 -->
	<jsp:include page="./include/gnb.jsp" flush="false" /><!-- 전체메뉴 -->

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
	<!-- 다른곳 말고 여기에 팝업들 넣어주세요~~ -->
	<!-- //팝업 넣는 영역  -->

	<jsp:include page="./include/footer.jsp" flush="false" /><!-- 푸터 -->
</article>
</body>
</html>