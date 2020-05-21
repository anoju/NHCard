<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('도시가스요금 조회/해지');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<h2 class="blind">도시가스요금 자동납부 조회</h2>
			<div class="section">
				<div class="tabmenu mb0">
					<ul>
						<li class="active"><a href="#" title="현재선택">NH채움카드</a></li>
						<li><a href="#">NH비씨카드</a></li>
					</ul>
					<div class="tab_line" aria-hidden="true"></div>
				</div>
				<div class="line_list_3">
					<ul>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk1" name="listChk"><i aria-hidden="true"></i>
								</span>
								<label for="listChk1" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">서울도시가스(123123123)</div>
										<div class="fc_gray mt10">
											<div>서울 성북구 종암로 21길 127</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_blue">이용중</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk2" name="listChk"><i aria-hidden="true"></i>
								</span>
								<label for="listChk2" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">서울도시가스(123123123)</div>
										<div class="fc_gray mt10">
											<div>서울 성북구 종암로 21길 127</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_blue">이용중</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk3" name="listChk" disabled><i aria-hidden="true"></i>
								</span>
								<label for="listChk3" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">서울도시가스(123123123)</div>
										<div class="fc_gray mt10">
											<div>서울 성북구 종암로 21길 127</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_red">해지완료</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="no_list mt30">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div class="txt">신청내역이 없습니다.</div>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot"><strong>서비스 이용시간</strong><br>평일/토요일: 08:00~20:00 , <span class="fc_red">일요일/공휴일 이용불가</span></li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue" disabled>해지</button>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="listViewPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>도시가스요금 자동납부 상세내역</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<ul class="list_box_table">
						<li>
							<div class="th">성명</div>
							<div class="td">김축협</div>
						</li>
						<li>
							<div class="th">카드정보</div>
							<div class="td">
								<div>NH올인원카드</div>
								<div>5421-56**-****-1234</div>
							</div>
						</li>
						<li class="line">
							<div class="th">주소</div>
							<div class="td">(06204) 경기도 성남시 분당구 중앙공원로 432</div>
						</li>
						<li>
							<div class="th">도시가스사명</div>
							<div class="td">서울도시가스</div>
						</li>
						<li>
							<div class="th">납부자번호</div>
							<div class="td">1234-1234-1234-1234</div>
						</li>
						<li>
							<div class="th">신규일자</div>
							<div class="td">2020.10.20</div>
						</li>
						<li>
							<div class="th">해지일자</div>
							<div class="td">2020.10.20</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>