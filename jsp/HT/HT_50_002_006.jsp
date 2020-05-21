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
				<div class="vip_visual">
					<h3>등급별 서비스 안내</h3>
					<ul class="grade_vip_list">
						<li>
							<a href="#">
								<img src="/content/images/contents/img_vip_badge01.png" alt="">
								<span class="vip_ko">노블레스</span>
								<span class="vip_en">Nobless</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/content/images/contents/img_vip_badge02.png" alt="">
								<span class="vip_ko">슈퍼로얄</span>
								<span class="vip_en">Super Royal</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/content/images/contents/img_vip_badge03.png" alt="">
								<span class="vip_ko">로얄</span>
								<span class="vip_en">Royal</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/content/images/contents/img_vip_badge04.png" alt="">
								<span class="vip_ko">프라임</span>
								<span class="vip_en">Prime</span>
							</a>
						</li>
					</ul>
					<img src="/content/images/contents/img_vip_visua01.jpg" alt="NHCARD VIP CLUB">
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">2~4/2~3개월 무이자할부 중 일부 지방세납부 및 일부 대학등록금 납부는 제외</li>
								<li class="dot">할인쿠폰 제공은 선정월 초 발송 안내장(DM)에 동봉되며 추가발송 불가합니다. </li>
								<li class="dot">선정회차별로 쿠폰구성이 다르며 쿠폰 사용은 각 쿠폰별 유효기간에 따라 사용하실 수 있습니다.</li>
								<li class="dot">NH비씨 우수회원이 NH채움카드를 발급 시 무이자할부/SMS알림서비스/기본연회비 면제 서비스는 우대기간동안 동일하게 제공됩니다. (단, SMS 알림서비스는 별도 신청시 혜택)</li>
								<li class="dot">우대기간 중 회원님의 신용도 변동에 따라 서비스가 제한될 수 있습니다.</li>
								<li class="dot">서비스 종료는 별도로 안내해 드리지 않습니다. 서비스기간을 꼭 기억해 주시기 바랍니다.</li>
								<li class="dot">우대서비스는 금융당국 정책변경이나 농협 내부 사정 등에 의해 변경될 수 있습니다.</li>
								<li class="last">
									<strong>대상제외 조건</strong>
									<p>선정시점 사고자(연체, 거래정지 등), 캠페인 거부자 (TM,DM,SMS거부 등록), 우편물 반송고객 (이용대금명세서, 마케팅DM 등)</p>
								</li>
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