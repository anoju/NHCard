<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('인증서 정보');

		//Layer.confirm('휴대폰에서 인증서를 삭제합니다.<br>PC에 저장/복사 되어있는 인증서는<br>유효합니다.<br>삭제하시겠어요?');
		Layer.alert('인증서가 삭제되었습니다.');
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
				<h2 class="tit_h2">인증서 정보</h2>
				<div class="table">
					<table>
						<caption>인증서의 고객명,발급기관,인증서 종류,발급일,만료일 표</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">고객명</th>
								<td>이농협</td>
							</tr>
							<tr>
								<th scope="row">발급기관</th>
								<td>금융결제원</td>
							</tr>
							<tr>
								<th scope="row">인증서 종류</th>
								<td>은행개인</td>
							</tr>
							<tr>
								<th scope="row">발급일</th>
								<td>2020.06.04</td>
							</tr>
							<tr>
								<th scope="row">만료일</th>
								<td>2021.06.04</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<a href="#" class="button h54 gray">인증서삭제</a>
						<a href="#" class="button h54 blue">비밀번호 변경</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>