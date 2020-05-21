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
					<li><a href="#">서비스안내</a></li>
					<li class="active"><a href="#" title="현재선택">신청</a></li>
					<li><a href="#">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<h3 class="tit_h2">서비스 선택 및 약관동의</h3>
				<div clas="mt20">
					<div class="chk_item ty2">
						<div class="checkbox">
							<input type="radio" id="serviceType1" name="serviceType"><i aria-hidden="true"></i>
							<label for="serviceType1" class="lbl">NH신용Manager (800원/월)</label>
						</div>
					</div>
					<div class="chk_item ty2">
						<div class="checkbox">
							<input type="radio" id="serviceType2" name="serviceType"><i aria-hidden="true"></i>
							<label for="serviceType2" class="lbl">NH신용Manager 플러스 (3,900원/월)</label>
						</div>
					</div>
				</div>
				<h3 class="tit_h4">약관동의</h3>
				<div class="chk_list mt15">
					<div class="chk_item">
						<div class="checkbox large">
							<input type="checkbox" id="agree1"><i aria-hidden="true"></i>
							<label for="agree1" class="lbl">전체동의</label>
							<a href="#" class="chk_link toggle open"><span class="blind">상세약관목록 확인하기</span></a>
						</div>
						<div class="chk_child">
							<div class="checkbox large">
								<input type="checkbox" id="agree1_1"><i aria-hidden="true"></i>
								<label for="agree1_1" class="lbl">[필수] 서비스 이용약관</label>
								<a href="#agreePop1" class="chk_link ui-pop-open"><span class="blind">서비스 이용약관 확인하기</span></a>
							</div>
							<div class="checkbox large">
								<input type="checkbox" id="agree1_2"><i aria-hidden="true"></i>
								<label for="agree1_2" class="lbl">[필수] 상품의 서비스 이행/유지를 위한 개인정보 수집·이용 동의</label>
								<a href="#agreePop2" class="chk_link ui-pop-open"><span class="blind">상품의 서비스 이행/유지를 위한 개인정보 수집·이용 동의 확인하기</span></a>
							</div>
							<div class="checkbox large">
								<input type="checkbox" id="agree1_3"><i aria-hidden="true"></i>
								<label for="agree1_3" class="lbl">[필수] 상품의 서비스 이행/유지를 위한 개인정보 제공 동의</label>
								<a href="#agreePop3" class="chk_link ui-pop-open"><span class="blind">상품의 서비스 이행/유지를 위한 개인정보 제공 동의 확인하기</span></a>
							</div>
						</div>
					</div>
				</div>
				<dl class="accordion_list accordion_dl mt25">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">NH신용Manager서비스는 월정액제 유료서비스로 이용료가 청구됩니다.</li>
								<li class="dot">서비스 이용료는 가입익월 이용료부터 신용카드 이용대금 결제일에 결제됩니다.</li>
								<li class="dot">NH 신용 Manager 서비스 중 신용관리 및 금융명의보호서비스는 신청 익영업일부터 제공 됩니다.</li>
								<li class="dot">NH비씨 카드승인 SMS유료이용 고객님은 별도로 300원이 청구 됩니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue" disabled>다음</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
				</div>
			</div>
		</section>
	</div>

	<!-- 약관팝업 -->
	<div id="agreePop1" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>서비스 이용약관</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>

	<div id="agreePop2" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>상품의 서비스 이행/유지를 위한 개인정보 수집·이용 동의</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	
	<div id="agreePop3" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>상품의 서비스 이행/유지를 위한 개인정보 제공 동의</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //약관팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>