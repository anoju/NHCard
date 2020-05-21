<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('NH신용Manager 플러스');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="first_blue_box">
				<div class="bg" aria-hidden="ture" data-animation="fadeInRight"></div>
				<div class="inner">
					<h2 class="tit">확실한 신용관리를 위한<br><strong class="fc_blue">NH신용Manager 플러스 서비스</strong></h2>
					<div class="mt10">코리아크레딧뷰로(주)와 제휴를 통해 <br>제공되는 서비스 입니다.</div>
					<div class="link mt25">
						<a href="#" class="btn_link">서비스 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="tabmenu">
				<ul>
					<li><a href="#">서비스안내</a></li>
					<li class="active"><a href="#" title="현재선택">신청</a></li>
					<li><a href="#">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">인증완료</h2>
					<p class="txt">인증이 완료 되었습니다.</p>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue">신청완료</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>