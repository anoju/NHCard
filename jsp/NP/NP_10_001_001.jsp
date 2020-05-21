<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('통신요금');

		Layer.open('#notServicePop');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="section">
				<h2 class="blind">통신요금 조회</h2>
				<div class="ico_box_wrap ty2">
					<i class="i_ico_88 ico_10" aria-hidden="true"></i>
					<p class="txt fc_black mt25">농협카드로 신청한 <span class="fc_blue">통신요금</span>을<br>조회 할 수 있습니다.</p>
				</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 대상</h3>
				<div class="fc_gray">농협을 통해 통신요금을 납부한 고객</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">통신사별 고객센터</h3>
				<div class="contact_tbl mt20">
					<div class="tbl t_center">
						<div class="td">
							<strong>SKT</strong>
							<div>1599-0011</div>
						</div>
						<div class="td">
							<strong>KT</strong>
							<div>1588-0010</div>
						</div>
						<div class="td">
							<strong>LG U+</strong>
							<div>1588-0010</div>
						</div>
					</div>
				</div>
				<div class="help_txt">신청하신 내용은 통신사를 통하여 문의해 주세요. </div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 이용 가능시간</h3>
				<div class="txt_list fz_14">
					<ul>
						<li class="dot">평일/토요일: 08:00~23:00</li>
						<li class="dot fc_red">일요일/공휴일 이용불가</li>
					</ul>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">서비스 이용시간 : 평일/토요일 08:00~23:00, <span class="fc_red">일요일/공휴일 이용불가</span></li>
								<li class="dot">농협을 통해 신청한 내역만 확인 가능합니다.</li>
								<li class="dot">통신사를 통하여 신청하신 내용은 해당 통신사로 문의 부탁드립니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 blue">조회</a>
				</div>
			</div>
		</section>
	</div>

	<div id="notServicePop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">서비스 이용시간이 아닙니다.</h2>
					<div>평일/토요일 08:00~23:00, <br><span class="fc_red">일요일/공휴일 이용불가</span></div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>