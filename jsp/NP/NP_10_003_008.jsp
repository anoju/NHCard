<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('교육비');
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
				<h2 class="blind">교육비 자동납부 신청완료</h2>
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">신청 완료</h2>
					<p class="txt">교육비 자동이체 신청이 완료되었습니다.</p>
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
						</tbody>
					</table>
				</div>
				<div class="table mt10">
					<table>
						<caption>학생 정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">학생명</th>
								<td>김축협</td>
							</tr>
							<tr>
								<th scope="row">생년월일</th>
								<td>2020.12.30</td>
							</tr>
							<tr>
								<th scope="row">학교명</th>
								<td>대진고등학교</td>
							</tr>
							<tr>
								<th scope="row">학교주소</th>
								<td>경기도 성남시 분당구 서현동 101번지 503호</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="table mt10">
					<table>
						<caption>신청인과의 관계 정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">신청인</th>
								<td>김축협</td>
							</tr>
							<tr>
								<th scope="row">신청인관계</th>
								<td>부모</td>
							</tr>
							<tr>
								<th scope="row">휴대폰번호</th>
								<td>010-1234-1234</td>
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