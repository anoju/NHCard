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
	<%@ include file="./include/top.jsp" %><!-- 헤더: 화면마다 헤더가 달라집니다.  -->
	<!-- 헤더 종류는 현재 4개
		top.jsp (일반 서브 헤더: 뒤로가기+타이틀+메뉴버튼)
		top_logo.jsp (메인, 로그인 헤더: 로고+메뉴버튼)
		top_close.jsp (회원가입 헤더: 타이틀+닫기버튼)
		top_menu.jsp (아이디찾기완료 헤더: 타이틀+메뉴버튼) -->
	<%@ include file="./include/gnb.jsp" %><!-- 전체메뉴: 컨텐츠 미확정 -->

	<!-- 컨텐츠 시작 -->
	<div id="container">
		<section id="contents">
			<div class="section">
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				컨텐츠~~ <br>
				<a href="#userCertifyPop" class="button blue ui-pop-open">본인인증 팝업</a>

				<br>
				<%@ include file="./include/certify/card.jsp" %><!-- 페이지에 들어가는 카드인증 -->
			</div>
		</section>
	</div>
	<!-- //컨텐츠 끝  -->

	<!-- 팝업 넣는 영역 -->
	<%@ include file="./include/certify/user.jsp" %><!-- 본인인증 팝업 -->
	<%@ include file="./include/certify/pop_cvcInfo.jsp" %><!-- 카드고유확인번호 팝업(본인인증과 다른데서도 쓰여서 따로 뺐습니다.) -->
	<!-- //팝업 넣는 영역  -->

	<%@ include file="./include/floatingBar.jsp" %><!-- 플로팅 바: 메인, 로그인, 서브메인에서만 사용 -->

	<%@ include file="./include/footer.jsp" %><!-- 푸터: 컨텐츠 미확정 -->
</article>
</body>
</html>