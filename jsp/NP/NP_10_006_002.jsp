<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('도시가스요금');
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
				<h2 class="blind">도시가스요금 자동납부 신청완료</h2>
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">신청 완료</h2>
					<p class="txt">도시가스 요금 자동이체 신청이 완료되었습니다.</p>
				</div>
				<div class="table">
					<table>
						<caption>신청자정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">성명</th>
								<td>김농협</td>
							</tr>
							<tr>
								<th scope="row">카드정보</th>
								<td>
									<div>NH올인원카드</div>
									<div class="fz_13 fc_gray mt5">5421-****-****-1234</div>
								</td>
							</tr>
							<tr>
								<th scope="row">휴대폰번호</th>
								<td>010-1234-1234</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="table mt10">
					<table>
						<caption>도시가스요금 정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">납부자 주소</th>
								<td>서울 성북구 종암로21길 127, 106동 1403호(종암동, 현대아이파크 APT 1차)</td>
							</tr>
							<tr>
								<th scope="row">도시가스사명</th>
								<td>서울도시가스</td>
							</tr>
							<tr>
								<th scope="row">납부자번호</th>
								<td>1234-1234-1234-1234</td>
							</tr>
						</tbody>
					</table>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">고객연락처로 안내 문자가 발송되오니 변경을 원하시면 아래 방법으로 변경하시기 바랍니다.</li>
								<li class="dot">고객 연락처 변경은 ‘NH 스마트뱅킹’에서 이용해 주십시오. NH스마트뱅킹 회원이 아닐 경우 회원가입 후 이용하시거나 카드고객 상담센터(1644-4000)에 문의 바랍니다.</li>
								<li class="dot">NH농협카드 고객센터 및 홈페이지를 통하지 않고 도시가스요금 자동이체를 신청/해지 한 경우 전산 반영 시점에 따라 해당 페이지상의 상태와 일부 차이가 있을 수 있으므로 반드시 본인의 정확한 신청/해지 처리상태를 해당 도시가스사 고객센터에 최종확인 하시기 바랍니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">홈으로</a>
					<a href="#" class="button h54 blue">해지/조회</a>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>