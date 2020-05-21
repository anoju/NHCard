<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('아파트관리비');
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
				<h2 class="blind">아파트관리비 자동납부 신청완료</h2>
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">신청 완료</h2>
					<p class="txt">아파트관리비 자동이체 신청이 완료되었습니다.</p>
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
						<caption>아파트 정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">지번주소</th>
								<td>(403-525)인천광역시 부평구 부평북로 432</td>
							</tr>
							<tr>
								<th scope="row">도로명주소</th>
								<td>(06204)인천광역시 부평구 부평북로 432</td>
							</tr>
							<tr>
								<th scope="row">아파트명</th>
								<td>삼산주공미래타운2단지</td>
							</tr>
							<tr>
								<th scope="row">동/호수</th>
								<td>101동 503호</td>
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
								<li class="dot"><strong>자동납부신청일 +19일</strong>이 관리비 납부마감일자 이전인 경우(같은 경우 포함) 최초 도래하는 관리비부터 카드 자동납부 되며, 납부 마감일 기준 <strong>D-4영업일</strong>에 카드 승인 처리 예정입니다.</li>
								<li class="dot"><strong>자동납부 신청일 +19일</strong>이 관리비 납부 마감일자 이후인 경우는 익월 관리비부터 자동납부 됩니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">조회 및 해지</a>
					<a href="#" class="button h54 blue">확인</a>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>