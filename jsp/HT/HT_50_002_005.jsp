<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('VIP 등급안내');
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
				<div class="tabmenu">
					<ul>
						<li><a href="#">등급 기준안내</a></li>
						<li class="active"><a href="#" title="현재선택">등급별 서비스</a></li>
					</ul>
					<div class="tab_line" aria-hidden="true"></div>
				</div>
				<div class="ht_vip_club_wrap">
					<div class="ht_vip_club_bg grade lv_prime">
						<div class="ht_club">
						<h3 class="tit_h3">등급별 서비스 안내</h3>
							<div class="vip_grade">
							<ul>
								<li><a href="#">노블레스</a></li>
								<li><a href="#">슈퍼로얄</a></li>
								<li><a href="#">로얄</a></li>
								<li class="active"><a href="#" title="선택된등급">프라임</a></li>
							</ul>
							</div>
						</div>
					</div>
				<h4 class="tit_h2">경제적 혜택</h4>	
				<div class="txt_list">
					<ul>
						<li class="dot">기본연회비 면제(일반, 우량, 골드 등급)
						</li>
						<li class="dot">전가맹점 <strong>2~3개월</strong> 무이자 할부</li>
					</ul>
				</div>
				<h4 class="tit_h2">리워드</h4>	
				<div class="txt_list">
					<ul>
						<li class="dot">할인 쿠폰</li>
					</ul>
				</div>
				<h4 class="tit_h2">거래편의</h4>	
				<div class="txt_list">
					<ul>
						<li class="dot">바로알림서비스(SMS)무료</li>
						<li class="dot">NH신용Manager 서비스 무료</li>
					</ul>
				</div>
				<dl class="accordion_list accordion_dl mt50">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">2~4/2~3개월 무이자할부 중 일부 지방세납부 및 
									일부 대학등록금 납부는 제외</li>
								<li class="dot">할인쿠폰 제공은 선정월 초 발송 안내장(DM)에 
									동봉되며 추가발송 불가합니다.
									</li>
								<li class="dot">선정회차별로 쿠폰구성이 다르며 쿠폰 사용은 각 
									쿠폰별 유효기간에 따라 사용하실 수 있습니다.
									</li>
								<li class="dot">NH비씨 우수회원이 NH채움카드를 발급 시 
									무이자할부/SMS알림서비스/기본연회비 면제 
									서비스는 우대기간동안 동일하게 제공됩니다.
									(단, SMS 알림서비스는 별도 신청시 혜택)
									</li>
								<li class="dot">우대기간 중 회원님의 신용도 변동에 따라 
									서비스가 제한될 수 있습니다.
									</li>
								<li class="dot">서비스 종료는 별도로 안내해 드리지 않습니다. 
									서비스기간을 꼭 기억해 주시기 바랍니다. </li>
								<li class="dot">우대서비스는 금융당국 정책변경이나 농협 내부 
									사정 등에 의해 변경될 수 있습니다.</li>
									<li class="last">
										<strong>대상제외 조건</strong>
										<p>선정시점 사고자(연체, 거래정지 등), 캠페인 거부자
											(TM,DM,SMS거부 등록), 우편물 반송고객
											(이용대금명세서, 마케팅DM 등)</p>
									</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
				<div class="btn_wrap mt30">
					<div class="flex">
						<a href="#" class="button line blue">바로알림서비스 신청</a>
						<a href="#" class="button blue">신용Manager 신청</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>