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
					<li><a href="#">신청</a></li>
					<li class="active"><a href="#" title="현재선택">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<h2 class="tit_h2">서비스 신청 내역</h2>
				<div class="form_item">
					<div class="fm_lb">이름</div>
					<div class="fm_val">김*협</div>
				</div>
				<div class="form_item">
					<label for="phoneNum" class="fm_lb">휴대폰번호</label>
					<div class="fm_cont">
						<div class="input"><input type="tel" id="phoneNum" maxlength="8" title="휴대폰번호 나머지 7~8자리 입력" placeholder="&prime;-&prime; 없이 입력"></div>
						<div class="error_txt">휴대폰번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>
				<div class="form_item">
					<label for="email" class="fm_lb">이메일</label>
					<div class="fm_cont email_form">
						<div class="input"><input type="text" id="email" title="이메일 입력" placeholder="이메일주소 입력"></div>
						<div class="error_txt">이메일를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>
				<div class="form_item">
					<div class="fm_lb">서비스 이용료 결제방식</div>
					<div class="fm_cont">
						<span class="checkbox">
							<input type="radio" id="payType1" name="payType"><i aria-hidden="true"></i>
							<label for="payType1" class="lbl">카드 결제</label>
						</span>
						<span class="checkbox">
							<input type="radio" id="payType2" name="payType"><i aria-hidden="true"></i>
							<label for="payType2" class="lbl">NH포인트 결제</label>
						</span>
					</div>
				</div>

				<div class="btn_wrap mt60">
					<div class="flex">
						<a href="#" class="button line blue">취소</a>
						<a href="#" class="button blue">변경</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>