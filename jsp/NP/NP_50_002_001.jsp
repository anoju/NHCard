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
					<div class="dot">3,900원 / 월</div>
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
								<i class="i_ico_40 ico_2" aria-hidden="true"></i>
								<div>
									<div class="title">ATM 부정사용 예방서비스</div>
									<div class="sub">ATM 부정사용 사고로부터 고객님을 보호합니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>ATM기로 체크카드 또는 신용카드로 예금인출을 하거나 현금서비스를 이용할 경우 회원의 휴대폰 위치와 ATM기의 위치를 확인하여 일치하지 않을 경우, 그 사실을 바로 고객에게 통보한 후 카드거래정지를 시키고 112에 사고신고까지 접수하여 추가 사고발생을 예방합니다.</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_3" aria-hidden="true"></i>
								<div>
									<div class="title">카드정보 유출확인 서비스</div>
									<div class="sub">국내/외 카드유출 정보를 지속적으로 확인/예방조치를 취합니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>국내/외 카드정보유출 여부를 지속적으로 확인하고, 카드정보유출 가능성이 확인될 시 우선적으로 회원과 컨택하여 사고예방에 대한 조치를 취합니다.</div>
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
								<i class="i_ico_40 ico_6" aria-hidden="true"></i>
								<div>
									<div class="title">등급향상 컨설팅</div>
									<div class="sub">자신의 미래 신용등급을 에측하고 신용등급 향상을 위한 가이드를 받을 수 있습니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot"><strong class="fc_black">신용등급 시뮬레이터</strong> : 카드 대출 연체 등 내 신용정보의 변동값을 마음대로 입력하고 그에 따른 신용등급의 예측결과를 확인할 수 있습니다.</li>
									<li class="dot"><strong class="fc_black">신용등급향상 1:1코칭</strong> : 신용등급을 올리기 위해 무엇을 어떻게 해야 할 지, 맞춤 분석 리포트로 알려드립니다.</li>
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
									<li class="dot"><strong class="fc_black">불법신용조회 사전 차단</strong> : 당분간 금융거래가 없을 경우 신용조회 차단 설정 기능 제공</li>
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
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_9" aria-hidden="true"></i>
								<div>
									<div class="title">피싱 · 해킹 금융사기 보상</div>
									<div class="sub">개인정보 유출이나 피싱, 해킹, 금융사기 등으로 발생한 금전적 손실을 보상해 드립니다.</div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>서비스 이용기간 중 개인정보 유출이나 피싱, 해킹, 금융사기 등으로 발생한 금전적 손실을 보상해 주는 서비스 입니다.</div>
							<div class="btn_wrap">
								<div class="flex">
									<a href="#ruleInfoPop" class="button blue ui-pop-open">약관확인하기</a>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<i class="i_ico_40 ico_10" aria-hidden="true"></i>
								<div>
									<div class="title">카드 안심보상</div>
									<div class="sub">서비스 이용기간 중 NH농협은행에서 발행한 신용카드를 분실 또는 도난 당하여 부정사용 되었을 때 발생하는 금전적 손실을 보상해 드립니다. </div>
								</div>
							</a>
						</div>
						<div class="panel">
							<div>신용카드 분실, 도난, 위조 및 변조, 정보유출 등의 위험으로부터 카드정보를 보호하는 서비스로 회원의 국내 및 해외거래, 금융서비스 거래를 대상으로 사고발생에 보다 효과적으로 대처합니다.</div>
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

	<!-- 보험이용약관 팝업 -->
	<div id="ruleInfoPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>보험 이용약관</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<h2 class="tit_h3 mt0">피싱, 해킹 금융사기 보상보험 주요내용</h2>
					<div class="mt10">신용조회 알람은 KCB(코리아크레딧뷰로)의 신용조회 서비스를 제공받고있는 기관에 한하여 제공됩니다.<br>(2016.7월 현재)</div>
					<h2 class="tit_h3">신용조회 차단적용기관</h2>
					<div class="table mt10">
						<table>
							<caption>신용조회 차단적용기관 안내표</caption>
							<colgroup>
								<col style="width:90px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">보험기간</th>
									<td class="t_left">서비스 이용기관과 동일(보험사와의 계약사항에 변동이 있는 경우, 서비스 기간내에 보험상품 내용이 변경될 수 있습니다.)</td>
								</tr>
								<tr>
									<th scope="row">담보위험</th>
									<td class="t_left">피싱/해킹으로 인한 개인정보침해사고로 피보험자가 입은 금전손실액</td>
								</tr>
								<tr>
									<th scope="row">보상한도</th>
									<td class="t_left">금전손해 1,000만원(1사고당/피보험자 1인당)</td>
								</tr>
								<tr>
									<th scope="row">자기부담금</th>
									<td class="t_left">10만원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<h2 class="tit_h3">보상처리 프로세스</h2>
					<div class="mt10">NH농협카드 제휴사 KCB가 고객님께 이메일로 보험가입인증서를 발급하고, 고객님과 현대해상 상호간의 상담을 통해 사고접수 및 보상처리가 이루어집니다.</div>

					<div class="step_flow">
						<ol>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>01</strong>
									</div>
									<div class="td ico">
										<i class="i_ico_56 ico_2" aria-hidden="true"></i>
									</div>
									<div class="td cont">
										<div class="tit">KCB</div>
										<div class="txt">가입대행 및 보험가입인증서 이메일 발급</div>
									</div>
								</div>
							</li>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>02</strong>
									</div>
									<div class="td ico">
										<i class="i_ico_56 ico_3" aria-hidden="true"></i>
									</div>
									<div class="td cont">
										<div class="tit">NH신용Manager 플러스 고객</div>
										<div class="txt">보험계약 관련 문의 및 상담, 사고접수 및 보상처리</div>
									</div>
								</div>
							</li>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>03</strong>
									</div>
									<div class="td ico">
										<i class="i_ico_56 ico_4" aria-hidden="true"></i>
									</div>
									<div class="td cont">
										<div class="tit">현대해상</div>
									</div>
								</div>
							</li>
						</ol>
					</div>

					<h2 class="tit_h3">주요약관내용</h2>
					<div class="mt10">현대해상 "피싱·해킹 금융사기 보상보험"의 주요약관 내용을 상세히 안내해 드립니다</div>
					<div class="rule_txt_box">
						<h3 class="rule_tit">제10조 (보상하는 손해)</h3>
						<ol>
							<li>회사는 대한민국 내에서 보험기간 중에 발생한 "피싱(Phishing) 또는 해킹(Hacking) 금융사기" (스미싱, 파밍, 메모리해킹을 포함하며, 이하 "사고"라 합니다)로 인하여 피보험자(보험대상자) 명의의 계좌에서 예금이 부당 인출(사기에 의한 부당 송금 및 이체 포함)되거나 신용카드(직불카드, 현금카드 등 포함)가 부당하게 사용되어 피보험자(보험대상자)가 이은 금전적 손해를 이 약관에 따라 보상하여 드립니다. 단, 이러한 손해를 보상하는 다른 보험계약(공제계약을 포함합니다.)의 규정에 따라 보험금이 지급되거나 또는 금융거래 상대방(금융기관등)이 제공하는 보상제도(법규, 해당 금융기관의 회원약관 및 보험계약을 포함합니다.) 및 가해자에 의해 보상을 받을 수 있는 경우, 그 금액을 공제합니다.</li>
							<li>제1항의 "피싱(Phishing) 또는 해킹(Hacking) 금융사기"사고의 입증은 경찰신고서류, 경찰 또는 검찰조사기록 등 관련자료에 따릅니다.</li>
						</ol>
						<h3 class="rule_tit">제11조 (보상하지 아니하는 손해)</h3>
						<div>회사는 아래의 사유로 인해 발생한 손해는 보상하여 드리지 아니합니다.</div>
						<ol>
							<li>피보험자(보험대상자) 또는 피보험자(보험대상자)의 대리인의 고의 또는 범죄행위로 인한 사고(공모한 경우를 포함합니다.)</li>
							<li>제10조(보상하는 손해)에 명기된 손해 이외의 일체의 금전적 손해</li>
							<li>구두 또는 문서에 의한 비방, 중상에 따른 인격권 침해</li>
							<li>전쟁, 외국의 무력행사, 혁명, 내란, 사변, 폭동, 테러</li>
							<li>피보험자(보험대상자)와 생계를 같이하는 배우자 및 직계친족에 의한 사고</li>
							<li>영업비밀, 저작권, 특허권 또는 이와 유사한 지적재산권 침해</li>
							<li>대한민국 외에서 생성된 개인정보로 인한 금전적 손해</li>
							<li>대한민국 외에서 피보험자(보험대상자)에게 발생한 금전적 손해</li>
							<li>피보험자(보험대상자)와 타인간에 손해배상에 관한 약정이 있는 경우 그 약정에 의하여 가중된 손해배상책임, 그러나 약정이 없었더라도 법률규정에 의하여 피보험자(보험대상자)가 부담하게 될 배상책임은 보상합니다.</li>
							<li>피보험자(보험대상자)가 입은 신체적인 상해, 질병 또는 장해, 정신적 쇼크, 정신적 고통 또는 정신 장해</li>
							<li>피보험자(보험대상자)가 자발적으로 제3자에게 개인정보를 제공하거나 노출한 경우</li>
							<li>피보험자(보험대상자)의 사업 또는 업무 관련하여 발생한 사고</li>
							<li>차압, 구류, 몰수, 파괴 등 국가 또는 공공단체의 공권력 행사</li>
							<li>보험기간 이전에 발생한 사고로 인해 보험기간 중에 발생한 금전적 손해</li>
							<li>사고와 관련하여, 피보험자가 「전기통신사기 피해금 환급에 관한 특별법」에 따라 지급 받은 해당 금액</li>
							<li>사고와 관련하여, 피보험자가 금융기관 또는 제3자로부터 보상, 환급 또는 배상을 받은 경우, 그 해당금액</li>
							<li>재화, 물품의 공급 또는 용역의 제공 등을 가장한 행위로 인하여 발생한 금전상 피해</li>
							<li>카드의 분실, 도난, 위변조 등의 사고 발생시 해당 금융기관 등에서 보상되는 손해</li>
							<li>개인용 컴퓨터(PC) 이외의 메인프레임(Main-frame), 서버(server)등의 컴퓨터에서 발생한 해킹(Hacking)으로 인해 발생한 금전적 손해 및 법인계좌에서 발생한 손해</li>
						</ol>

						<h3 class="rule_tit">제12조 (보험금 등의 지급한도)</h3>
						<ol>
							<li>회사는 1회의 사고에 대하여 손해액이 보험증권(보험가입증서)에 기재된 자기부담금을 초과하는 경우에 한하여 그 초과분을 보험증권(보험가입증서)에 기재된 보상한도액을 한도로 보상합니다.</li>
							<li>이 계약상의 피보험자(보험대상자)가 다수인 경우, ‘1인당’으로 기재된 보상한도액은 각각의 피보험자 (보험대상자)별로 개별적으로 적용합니다.</li>
							<li>제1항 및 제2항에도 불구하고, 이 계약상의 피보험자(보험대상자)의 수에 관계없이 보험기간 중 발생하는 모든 사고에 대한 회사의 보험금의 합계액은 보험증권(보험가입증서)에 기재된 총 보상한도액을 한도로 합니다.</li>
						</ol>

						<h3 class="rule_tit">제17조 (계약의 무효)</h3>
						<div>계약을 맺을 때에 보험의 목적에 이미 사고가 발생하였을 경우 이 계약은 무효로 합니다. 다만, 회사의 고의 또는 과실로 인하여 계약이 무효로 된 경우와 회사가 승낙 전에 무효임을 알았거나 알 수 있었음에도 불구하고 보험료를 반환하지 않은 경우에는 보험료를 납입한 날의 다음날부터 반환일까지의 기간에 대하여 회사는 보험개발원이 공시하는 보험계약대출이율을 연단위 복리로 계산한 금액을 더하여 돌려 드립니다.</div>
						<h3 class="rule_tit">제17조 (계약의 무효)</h3>
						<ol>
							<li>회사는 아래의 보험금 청구서류를 접수한 때에는 접수증을 교부하고, 그 서류를 접수받은 후 지체없이 지급할 보험금을 결정하고 지급할 보험금이 결정되면 7일 이내에 이를 지급하여 드립니다.
								<ol>
									<li>① 보험금 청구서(회사양식)</li>
									<li>② 주민등록증, 여권 또는 운전면허증 등 사진이 부착된 정부기관 발행 신분증(본인이 아닌 경우에는 본인의 인감증명서 포함)</li>
									<li>③ 기타 회사가 요구하는 증거자료</li>
								</ol>
							</li>
							<li>제1항에 의한 지급할 보험금이 결정되기 전이라도 피보험자의 청구가 있을 때에는 회사가 추정한 보험금의 50% 상당액을 가지급보험금으로 지급합니다.</li>
							<li>회사가 제1항의 규정에 정한 지급기일내에 보험금을 지급하지 아니하였을 때에는 그 다음날부터 지급일까지의 기간에 대하여 보험개발원이 공시하는 보험계약대출이율을 연단위 복리로 계산한 금액을 더하여 지급합니다. 그러나 계약자 또는 피보험자(보험대상자)의 책임있는 사유로 지급이 지연된 때에는 그 해당기간에 대한 이자를 더하여 드리지 아니합니다.</li>
						</ol>
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
	<!-- //보험이용약관 팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>