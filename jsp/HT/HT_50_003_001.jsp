<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('VIP우대서비스');
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
				<div class="vip_ht">
					<ul>
						<li>
							<div class="service_list">
								<dl>
									<dt>
										<i class="i_ico_80 nhmall" aria-hidden="true"></i><span class="blind">농협몰</span>
									</dt>
									<dd><span class="ico_txt blue2">노블레스</span><span class="ico_txt green">슈퍼로얄</span><span class="ico_txt yellow">로얄</span><span class="ico_txt blue1">프라임</span></dd>
									<dd class="txt">우수고객전용 온라인쇼핑몰</dd>
									<dd><strong>농협몰 우대혜택</strong>
										<div class="pop_btn"><!-- 2020-05-19: 클래스 변경-->
											<a href="#modalNH" class="tooltip_btn ui-pop-open">자세한 내용 확인</a>
										</div>
									</dd>
								</dl>
								<div class="btn_wrap">
									<div class="flex">
										<a href="#" class="button line"><span class="fc_blue">농협몰</span> 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="service_list">
								<dl>
									<dt>
										<i class="i_ico_80 tourm" aria-hidden="true"></i><span class="blind">투어멤버스</span>
									</dt>
									<dd><span class="ico_txt blue2">노블레스</span><span class="ico_txt green">슈퍼로얄</span><span class="ico_txt yellow">로얄</span></dd>
									<dd class="txt">해외여행, 항공권 할인</dd>
									<dd><strong>투어멤버스</strong>
										<div class="pop_btn"><!-- 2020-05-19: 클래스 변경-->
											<a href="#modalTourMem" class="tooltip_btn ui-pop-open">자세한 내용 확인</a>
										</div>
									</dd>
								</dl>
								<div class="btn_wrap">
									<div class="flex">
										<a href="#" class="button line"><span class="fc_blue">투어멤버스</span> 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="service_list">
								<dl>
									<dt>
										<i class="i_ico_80 manager" aria-hidden="true"></i><span class="blind">NH신용Manager</span>
									</dt>
									<dd><span class="ico_txt blue2">노블레스</span><span class="ico_txt green">슈퍼로얄</span><span class="ico_txt yellow">로얄</span><span class="ico_txt blue1">프라임</span></dd>
									<dd class="txt">소중한 신용정보를 지켜드려요</dd>
									<dd><strong>NH신용Manager<br>서비스 무료 제공</strong>
										<div class="pop_btn"><!-- 2020-05-19: 클래스 변경-->
											<a href="#modalNhManager" class="tooltip_btn ui-pop-open">자세한 내용 확인</a>
										</div>
									</dd>
								</dl>
								<div class="btn_wrap">
									<div class="flex">
										<a href="#" class="button line"><span class="fc_blue">NH신용Manager</span> 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<dl class="accordion_list accordion_dl mt60">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">기타 자세한 내용은 카드고객상담센터
									(1644-4000)로 문의하시기 바랍니다.</li>
								<li class="dot">신용카드의 남용은 가계경제에 위협이 됩니다.</li>
								<li class="dot">연체 이자율 : 회원별,이용상품별 약정금리 +최대
									3%p, 법정 최고금리(24%) 이내
									단,연체 발생 시점에 약정금리가 없는 경우는
									아래와 같이 적용함
									<ul>
										<li class="dash">일시불 거래 연체시 : 거래발생 시점의 최소기간(2개월)
											유이자 할부금리</li>
										<li class="dash">무이자할부 거래 연체시 : 거래발생 시점의 동일한 할부
											계약기간의 유이자 할부 금리</li>
									</ul>
								</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
		</section>
	</div>
<!-- 농협몰 팝업 -->
<div id="modalNH" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>농협몰 우대혜택</h1>
		</div>
		<div class="pop_cont">
			<div class="section">
				친환경샵, 우수브랜드관, 명품관의 상품 구매시 할인 혜택 및 이벤트 응모, 쿠폰할인 등 실속있는 쇼핑의 즐거움을 드립니다.
			</div>
		</div>
		<div class="pop_btn btn_wrap bottom_fixed">
			<div>
				<div class="flex">
					<a href="#" class="button h48 blue ui-pop-close">확인</a>
				</div>
			</div>
		</div>
	</article>
</div>
<!--// 농협몰 팝업 -->
<!-- 투어멤버스 팝업 -->
<div id="modalTourMem" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>투어멤버스</h1>
		</div>
		<div class="pop_cont">
			<div class="section">
				<div class="txt_list">
					<ul>
						<li class="dot">외여행 할인 예약 시 3~10% 할인</li>
						<li class="dot">국내 여행 할인 예약 시 5~50% 할인</li>
						<li class="dot">국내외 항공권 3~7% 할인</li>
						<li class="dot">렌터카 40~45% 할인 및 24시간 무료 서비스</li>
						<li class="dot">VIP대상 여행/공연/골프 행사 참여</li>
						<li class="dot">기타 철도, 버스 여행 상품 할인, KTX 승차권 할인 등을 제공해 드립니다.</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="pop_btn btn_wrap bottom_fixed">
			<div>
				<div class="flex">
					<a href="#" class="button h48 blue ui-pop-close">확인</a>
				</div>
			</div>
		</div>
	</article>
</div>
<!--// 투어멤버스 팝업 -->
<!-- NH신용매니저 팝업 -->
<div id="modalNhManager" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>NH신용Mangager 서비스 무료제공</h1>
		</div>
		<div class="pop_cont">
			<div class="section">
				<div class="txt_list">
					<ul>
						<li class="dot">소중한 신용정보를 지켜주는 NH신용Manager 서비스 무료 제공</li>
						<li class="dot">서비스 이용기간 : VIP 회원 유지시 까지</li>
						<li class="dot">대상등급 : 노블레스, 슈퍼로얄, 로얄, 프라임</li>
						<li class="dot">서비스 가입 문의 : NH농협카드 고객 상담 센터 1644-4000</li>
						<li class="dot">VIP 우대 기간이 종료될 경우 서비스는 자동으로 해지되고 요금이 청구되지 않습니다</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="pop_btn btn_wrap bottom_fixed">
			<div>
				<div class="flex">
					<a href="#" class="button h48 blue ui-pop-close">확인</a>
				</div>
			</div>
		</div>
	</article>
</div>
<!--// NH신용매니저 팝업 팝업 -->
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>