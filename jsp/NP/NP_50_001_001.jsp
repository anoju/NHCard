<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('NH신용Manager');

		Layer.open('#creditComInfoPop')
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
					<h2 class="tit">소중한 신용정보보호를 위한<br><strong class="fc_blue">NH신용Manager 서비스</strong></h2>
					<div class="mt10">코리아크레딧뷰로(주)와 제휴를 통해 <br>제공되는 서비스 입니다.</div>
					<div class="link mt25">
						<a href="#" class="btn_link">서비스 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="tabmenu">
				<ul>
					<li class="active"><a href="#" title="현재선택">서비스안내</a></li>
					<li><a href="#">신청</a></li>
					<li><a href="#">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<h3 class="tit_h2">가입대상</h3>
				<div class="txt_list">
					<ul>
						<li class="dot">NH농협카드를 소지한 회원(본인카드만 신청 가능)</li>
						<li class="dot">카드 VIP회원은 무료 제공(VIP미 선정 시 자동해지)</li>
					</ul>
				</div>
				<h3 class="tit_h2">이용요금</h3>
				<div class="txt_list">
					<div class="dot">800원 / 월</div>
					<div class="caution_txt">서비스 가입월의 익월 이용료부터 신용카드 이용대금 결제일에 결제됩니다.</div>	
				</div>

				<ul class="accordion_list_1 mt40 ui-accordion">
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_1" aria-hidden="true"></i>
								<div>
									<div class="title">카드승인 SMS</div>
									<div class="sub">카드 승인이 발생할 때 마다 회원님께 SMS를 발송합니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>카드승인SMS 서비스는 카드 승인이 발생할 때 마다 회원님께 SMS를 발송 함으로써, 카드 부정 사용으로 부터 회원님을 보호 합니다.</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_4" aria-hidden="true"></i>
								<div>
									<div class="title">사고예방 알람서비스</div>
									<div class="sub">신용카드 분실, 도난, 정보유출 등의 위험으로부터 카드정보를 보호합니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">모니터링을 통해 위험성이 높은 카드 승인 건에 대해 sms를 전송합니다.</li>
									<li class="dot">부정사용 확인 후 추가 예방 조치가 가능합니다.</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_5" aria-hidden="true"></i>
								<div>
									<div class="title">종합신용보고서</div>
									<div class="sub">신용등급, 평점, 카드정보, 대출정보 등 다양한 신용정보를 제공합니다. </div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>내 신용에 긍정적, 부정적 영향을 주는 요인을 분석하여 현재의 내 신용상태에 대한 정확한 정보를 제공합니다.</div>
							<div class="txt_list mt10">
								<ul>
									<li class="dot"><strong class="fc_black">신용등급</strong> : 은행, 카드사, 저축은행, 보험사 등에서 조회되는 신용등급 확인 가능</li>
									<li class="dot"><strong class="fc_black">연체정보</strong> : 카드, 대출, 미지급 연체 등의 연체정보 및 연간 연체이력 정보 제공</li>
									<li class="dot"><strong class="fc_black">카드정보</strong> : 카드사별 실적정보 및 한도정보 제공</li>
									<li class="dot"><strong class="fc_black">대출정보</strong> : 금융기관별(은행, 카드사, 저축은행, 보험사 등) 대출건수, 약정금액, 대출금액 등 현황 정보 제공</li>
									<li class="dot"><strong class="fc_black">보증정보</strong> : 연대보증 정보제공, 지급보증 정보제공</li>
									<li class="dot"><strong class="fc_black">조회정보</strong> : 금융기관에서 조회한 내 신용정보 내역 제공</li>
									<li class="dot"><strong class="fc_black">신상정보</strong> : 금융기관의 통합된 청구지정보 제공</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_7" aria-hidden="true"></i>
								<div>
									<div class="title">신용변동알람</div>
									<div class="sub">신용거래, 연체발생 등 고객님의 신용변동 발생 시 알려드리는 모니터링 서비스입니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>신용변동 발생시 실시간으로 체크하여 고객님 휴대폰과 이메일로 통보해 드리는 24시간 모니터링 서비스입니다.</div>
							<div class="txt_list mt10">
								<ul>
									<li class="dot"><strong class="fc_black">신용정보변동알람</strong> : 신용등급, 신용조회 등 신용상태 변동시 알람제공</li>
									<li class="dot"><strong class="fc_black">신용거래변동알람</strong> : 신용거래 발생시 실시간 알람제공</li>
									<li class="dot"><strong class="fc_black">연체정보변동알람</strong> : 카드연체, 대출연체, 채무불이행 등 연체 정보 발생시 알람제공</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_8" aria-hidden="true"></i>
								<div>
									<div class="title">금융명의보호</div>
									<div class="sub">금융회사의 신용조회 여부를 실시간으로 알려드리고 원할 시 신용조회를 원칙적으로 차단 설정할 수 있습니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>금융회사에서 고객님의 신용정보를 조회하는지 실시간으로 체크하여 알람 및 차단 서비스를 해드립니다.</div>
							<div class="txt_list mt10">
								<ul>
									<li class="dot"><strong class="fc_black">불법신용조회 사전 차단</strong> : 당분간 금융거래가없을 경우 신용조회 차단 설정 기능 제공</li>
									<li class="dot"><strong class="fc_black">신용조회 차단 알람</strong> : 신용정보 조회 발생여부 실시간 감지 후 알람제공</li>
									<li class="dot"><strong class="fc_black">신용조회 내역 확인</strong> : 금융기관에서 발생한 신용조회 차단 및 정상조회 내역확인 가능</li>
								</ul>
							</div>
							<div class="noti_txt fc_red mt20">신용조회 차단 가능 기관 및 차단 기준을 확인하세요.</div>
							<div class="txt_list mt10">
								<ul>
									<li class="dot fc_red">금융명의보호 서비스는 코리아크레딧뷰로주식회사의 신용정보를 참조하는 금융회사의 신용조회에만 적용됩니다.</li>
									<li class="dot fc_red">신용조회 차단은 신규상담 및 개설의 경우에만 적용되며, 기존 거래유지로 조회되거나 연체 정보 등 신용정보 이용 및 보호에 관한 법률에 의거 조회 동의 없이 조회가 가능한 정보에 대해서는 차단되지 않습니다.</li>
									<li class="dot fc_red">KCB에 수집되는 정보를 기준으로 제공되므로 KCB 회원사 및 정보제공기관이 아니거나 해당기관의 정보제공정책에 의해서 일부 정보는 제공되지 않을 수 있습니다.</li>
								</ul>
							</div>
							<div class="btn_wrap">
								<div class="flex">
									<a href="#creditComInfoPop" class="button blue ui-pop-open">조회알람 및 차단기관 확인하기</a>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 blue">서비스 신청하기</a>
				</div>
			</div>
		</section>
	</div>

	<!-- 신용조회 발생 알람/차단 적용기관 안내 팝업 -->
	<div id="creditComInfoPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>신용조회 발생 알람/차단 적용기관 안내</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<h2 class="tit_h3 mt0">신용조회 알람적용기관</h2>
					<div class="mt10">신용조회 알람은 KCB(코리아크레딧뷰로)의 신용조회 서비스를 제공받고있는 기관에 한하여 제공됩니다. <br>(2016.7월 현재)</div>
					<h2 class="tit_h3">신용조회 차단적용기관</h2>
					<div class="table tbl_small mt10">
						<table>
							<caption>신용조회 차단적용기관 안내표</caption>
							<colgroup>
								<col style="width:60px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">은행</th>
									<td class="keepall">외환은행, 신한은행, IBK기업은행, KB국민은행, 우리은행, NH농협은행, 하나은행, 광주은행, 전북은행, 부산은행, 씨티은행, 제주은행, 경남은행, 수협은행, SC은행, 대구은행, 한국산업은행, 새마을금고중앙회</td>
								</tr>
								<tr>
									<th scope="row">카드사</th>
									<td class="keepall">우리카드, 하나카드, 신한카드, 현대카드, 롯데카드, 삼성카드, 씨티은행카드, NH농협카드, IBK기업카드, 제주은행카드, 전북은행카드, 대구은행카드, 부산은행카드, KB국민카드, 수협은행카드, 경남은행카드 등</td>
								</tr>
								<tr>
									<th scope="row">보험</th>
									<td class="keepall">N동양생명보험, 서울보증보험, 흥국생명보험, 교보생명보험, 삼성화재해상보험, LIG손해보험, 삼성생명보험, 동부화재해상보험, 신용보증기금, MG손해보험, NH농협생명, 미래에셋생명보험, 한화생명보험, 현대라이프생명보험 등</td>
								</tr>
								<tr>
									<th scope="row">할부<br>금융</th>
									<td class="keepall">하나캐피탈, JB우리캐피탈, KB캐피탈, NH농협캐피탈, 아주캐피탈, BS캐피탈, 두산캐피탈, IBK캐피탈, 효성캐피탈, RCI파이낸셜, 롯데캐피탈, 메르세데스벤츠파이낸셜, 메리츠캐피탈, 한국캐피탈, 도이치파이낸셜 등</td>
								</tr>
								<tr>
									<th scope="row">저축<br>은행</th>
									<td class="keepall">신한저축은행, SBI저축은행, 스마트저축은행, 모아저축은행, 공평저축은행, 한국투자저축은행, BS저축은행, 예가람저축은행, 부산고려저축은행, KB저축은행, OK저축은행, HK저축은행, 하나저축은행, 아주저축은행, 웰컴저축은행 등</td>
								</tr>
								<tr>
									<th scope="row">대부</th>
									<td class="keepall">티포스코퍼레이션대부, 미즈사랑대부, 에이스비지니스앤대부, 원캐싱대부, 유노스프레스티지대부, 콜렉트대부, 웰컴크레디라인대부, 유원캐피탈대부, 애니원캐피탈대부, 태강대부, 미래신용정보, 스타크레디트대부, 밀리언캐쉬대부, 유아이크레디트대부, 베스트캐피탈대부 등</td>
								</tr>
								<tr>
									<th scope="row">조합/<br>기타</th>
									<td class="keepall">KAMCO마이크로파이낸스, 메리츠종금증권, 신용회복위원회, 기술보증기금, 한국증권금융, 농협자산관리회사, 우리투자증권, 사회연대은행, 한국주택금융공사, 산림조합중앙회, 신용협동조합중앙회 등</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="mt10">신용조회 차단은 신용조회 차단기능을 적용한 KCB의 제휴기관에 한하여 제공됩니다.(2015년 2월 현재)</div>
					<h3 class="tit_h4">신용조회 차단적용기관</h3>
					<div class="txt_list mt5">
						<div class="dot">신규상담 및 개설의 목적으로 신용조회가 발생하는 모든 경우</div>
					</div>
					<h3 class="tit_h4">신용조회 차단 예외 범위</h3>
					<div class="txt_list mt5">
						<ul>
							<li class="dot">기존 거래유지를 목적으로 다시 조회되는 경우</li>
							<li class="dot">연체 정보 등 신용정보 이용 및 보호에 관한 법률에 의거, 조회 동의 없이도 조회가 가능할 경우</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 변경-->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //신용조회 발생 알람/차단 적용기관 안내 팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>