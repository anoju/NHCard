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
				<div class="tit_h2">
					<div><h2 class="tit">신청정보</h2></div>
					<div>
						<a href="#" class="btn_link">정보변경<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
				
				<div class="form_item">
					<label for="phoneNum" class="fm_lb">휴대폰번호</label>
					<div class="fm_cont">
						<div class="input"><input type="tel" id="phoneNum" maxlength="8" title="휴대폰번호 나머지 7~8자리 입력" placeholder="&prime;-&prime; 없이 입력"></div>
						<div class="error_txt">휴대폰번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>

				<div class="form_item">
					<label for="mail1" class="fm_lb">이메일</label>
					<div class="fm_cont email_form">
						<div class="input"><input type="text" id="mail1" title="이메일 입력" placeholder="이메일주소 입력"></div>
						<div class="error_txt">이메일를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>

				<div class="form_item">
					<div class="fm_lb">신청 서비스(선택사항)</div>
					<div class="fm_cont mt15">
						<div class="checkbox">
							<input type="checkbox" id="atmChk"><i aria-hidden="true"></i>
							<label for="atmChk" class="lbl">ATM 위치기반 사고예방 서비스</label>
						</div>
						<div class="noti_txt mt10 ml5">회원님의 휴대폰 위치정보와 ATM기의 위치정보를 비교해 ATM부정거래를 예방하는 서비스 입니다.</div>
					</div>
				</div>

				<div class="form_item">
					<div class="fm_lb">결제방법</div>
					<div class="fm_cont mt20">
						<div class="checkbox">
							<input type="radio" id="payType1" name="payType"><i aria-hidden="true"></i>
							<label for="payType1" class="lbl">카드 결제</label>
						</div>
						<div class="checkbox">
							<input type="radio" id="payType2" name="payType"><i aria-hidden="true"></i>
							<label for="payType2" class="lbl">NH포인트 결제</label>
						</div>
					</div>
				</div>
				<div class="btn_wrap mt60">
					<div class="flex">
						<a href="#" class="button line blue">취소</a>
						<a href="#" class="button blue">다음</a>
					</div>
				</div>

				<dl class="accordion_list accordion_dl mt25">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">서비스 이용료는 가입익월 이용료부터 신용카드 이용대금 결제일에 결제됩니다.</li>
								<li class="dot">NH 신용 Manager 서비스 중 신용관리 및 금융 명의보호서비스는 신청 익영업일부터 제공 됩니다.</li>
								<li class="dot">NH비씨 카드승인 SMS유료이용 고객님은 별도로 300원이 청구 됩니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>