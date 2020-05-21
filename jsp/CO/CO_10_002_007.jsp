<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('회원가입');

		//기존회원일 경우 팝업
		//Layer.open('#isMemberChk'); 

		//탈퇴회원일 경우 팝업
		//Layer.open('#dropMemberChk');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_close.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="step_wrap">
				<h2 class="step_tit">STEP1. NH농협카드 인증</h2>
				<ol class="step_state">
					<li class="on">1<span class="blind">단계(현재단계)</span></li>
					<li>2<span class="blind">단계</span></li>
				</ol>
			</div>
			<div class="section">
				<!-- 농협카드 인증-->
				<%@ include file="../include/certify/card.jsp" %>
				<!-- //농협카드 인증-->
				
				<dl class="accordion_list accordion_dl">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">가입하기 위해서는 고객님의 카드번호 인증절차가 필요합니다.</li>
								<li class="dot">회원가입 후, 아이디 / 비밀번호로 로그인을 하시면 계좌잔액, 입출금 거래내역 등 일부 금융거래 조회서비스 및 각종 카드 조회, 카드신청 등 일부 카드 서비스 이용이 가능합니다.</li>
								<li class="dot">만 14세 미만은 가입하실 수 없습니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<button type="button" class="button h54 blue" disabled>다음</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="isMemberChk" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section">
					<div class="t_center">NH농협카드 기존회원 입니다.</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue">로그인</a>
					</div>
				</div>
			</div>
		</article>
	</div>

	<div id="dropMemberChk" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section">
					<div class="t_center"><strong>김농협</strong>님, NH농협카드 홈페이지 탈퇴 회원입니다.<br>기존 아이디로 재가입 가능합니다.</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 gray">신규 아이디 가입</a>
						<a href="#" class="button h48 blue">기존 아이디 가입</a>
					</div>
				</div>
			</div>
		</article>
	</div>

	<!-- 농협카드 인증-->
	<%@ include file="../include/certify/pop_cvcInfo.jsp" %>
	<!-- //팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>