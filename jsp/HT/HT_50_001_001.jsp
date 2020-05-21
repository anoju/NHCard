<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('VIP 서비스안내');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents pt0 pb0">
			<div class="vip_intro">
				<div class="item_effect type2">
					<img src="../../images/contents/vip_intro_img.png" alt="VIP SERVICE 소중한 고객님을 위해 서비스의 가치를 높이겠습니다.">
				</div>
				<div class="vip_intro_txt">
					<h2 class="tit_h2 fc_gold"><span>NH농협카드 VIP SERVICE</span></h2>
					<div>NH농협카드 고객님대상으로 카드이용실적 및 신용도가 <br>
					우수한 고객님을 선정하여 NH농협카드의 우대서비스를 <br>
					제공하는 <strong class="fc_black">NH농협카드만의 고객우대프로그램</strong>입니다. </div>
				</div>
				<div class="vip_intro_card" aria-hidden="true">
					<div class="card_1" data-animation="fadeInLeft"></div>
					<div class="card_2" data-animation="fadeInRight" data-delay="300"></div>
					<div class="bg" data-animation="fadeInDown" data-delay="600"></div>
				</div>
				<div class="section bg_gray pt50 pb30">
					<h3 class="tit_h2 fc_gold">선정기준</h3>
					<div class="txt_list fz_14">
						<ul>
							<li class="dot"><strong class="fc_black">최근 1년 동안의 카드 이용실적(기업카드 제외)과 신용도를 기준으로 선정 </strong><br>
								최근 1년간 일시불, 할부 이용금액 1천6백만원 이상</li>
							<li class="dot"><strong class="fc_black">NH농협관계실적 등을 적용한 하나로가족 등급 및 신용도 우수고객을 기준으로 선정</strong></li>
						</ul>
					</div>
					<div class="gold_line_box">
						<div class="txt_list">
							<ul>
								<li class="dash">실적기간 : 전전년 12월 ~ 전년 11월 동안 이용금액을 기준으로 함</li>
								<li class="dash">실적기간 중 취소건은 마이너스 처리됨</li>
							</ul>
						</div>
					</div>
					<div class="caution_txt">2021년 VIP CLUB 제도가 개편될 예정입니다. <br>자세한 내용은 2020년 하반기에 공지할 예정입니다.</div>

					<h3 class="tit_h2 fc_gold">운영기준</h3>
					<div class="txt_list fz_14">
						<ul>
							<li class="dot"><strong class="fc_black">연1회(1월) 선정</strong></li>
							<li class="dot"><strong class="fc_black">선정월 1일부터 12개월간 우대서비스 제공</strong></li>
						</ul>
					</div>
					<div class="gold_line_box">
						<div class="txt_list">
							<ul>
								<li class="dash">차기 우수회원 선정 시 선정 기준은 변경이 있을 수 있습니다.</li>
								<li class="dash">본 서비스는 우대기간중 고객님의 신용도변동에 따라 제한될 수 있으며, 당사 사정에 따라 서비스내용이 변경될 수 있습니다.</li>
								<li class="dash">신용정보제공동의 및 이용권유동의 접수가 되지 않은 고객은 서비스 제공이 제한될 수 있습니다.</li>
							</ul>
						</div>
					</div>
					<div class="t_right mt20">
						<a href="tel:1644-4000" class="tel"><i class="tel_icon" aria-hidden="true"></i><span>문의전화 : </span><strong>1644-4000</strong></a>
					</div>
					
					<div class="btn_wrap">
						<div class="flex">
							<a href="#" class="button line blue">VIP 등급안내</a>
							<a href="#" class="button blue">MY VIP서비스</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>