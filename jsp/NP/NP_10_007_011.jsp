<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('4대 사회보험료 조회/변경/해지');
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
				<h2 class="blind">4대 사회보험료 자동납부 해지완료</h2>
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">해지 완료</h2>
					<p class="txt">4대 사회보험료 자동이체 해지가 완료되었습니다.</p>
				</div>
				<div class="table">
					<table>
						<caption>신청자정보</caption>
						<colgroup>
							<col style="width:130px">
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
								<th scope="row">연락처</th>
								<td>010-1234-1234</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="table mt10">
					<table>
						<caption>4대 사회보험료 정보</caption>
						<colgroup>
							<col style="width:130px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">가입자구분</th>
								<td>지역</td>
							</tr>
							<tr>
								<th scope="row">보험구분</th>
								<td>건강구분</td>
							</tr>
							<tr>
								<th scope="row">납부자명</th>
								<td>김농협</td>
							</tr>
							<tr>
								<th scope="row">납부방식</th>
								<td>카드자동납부</td>
							</tr>
							<tr>
								<th scope="row">납부자주민번호</th>
								<td>920629-*******</td>
							</tr>
							<tr>
								<th scope="row">납부자사업자번호</th>
								<td>00000000</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">조회/변경/해지</a>
					<a href="#" class="button h54 blue">확인</a>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>