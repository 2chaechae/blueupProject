<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/modify.member.view.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

	<div class="contain my lnblist-Wrap" id="contain" style="padding-top: 50px; min-height: 412px;">
		<div class="container">
			<h2 class="title01">쿠폰생성</h2>

<%@ include file="adminMenu.jsp" %>
<main class="contents memberInfoModi-wrap" id="contents">
				
				<div class="board-write forms">
					<table summary="쿠폰 생성">
						<caption>쿠폰 생성</caption>
						<colgroup>
							<col style="width:200px;">
							<col>
						</colgroup>
						<tbody>
						<tr>
						<th scope="row"><label for="">고객 선택</label></th>
							<td>
									<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										<span>전체 회원</span>
										<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										<span>재구매 고객</span>
										<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										<span>전체 고객</span><br>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="">관리 쿠폰명</label></th>
							
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="">금액</label></th>
							
							<td>
								<input type="text"><label for="">쿠폰의 할인금액을 입력해주세요</label>
							</td>
						</tr>						
						<tr>
							<th scope="row"><label for="">발급기간</label></th>
							
							<td>
							<label for="">발급기간 시작일</label>
							<dd class="fr">
									<input type="text" class="calendar" id="dateStart" name="dateStart" value="" readonly>
							</dd>
							</td>
						</tr>	
						<tr>
							<th scope="row"><label for="">유효기간</label></th>
							
							<td>
							<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										<span>기간설정</span>
										<input type="checkbox" id="smsRecptnAgrYn" name="smsRecptnAgrYn" value="Y" >
										<span>발급일 기준 설정</span><br><br>
							<label for="">발급기간 시작일</label><input type="text"><label for="">일 간 사용가능</label>
							</td>
						</tr>	
					
					</tbody></table>
				</div>
				
				
				
				<div class="btnWrapBox">
					
					<a href="#" class="btn fill" id="confirmBtn" onclick="return false;">쿠폰 생성</a>
				</div>
				</form>
			</main>
		</div>
	</div>
 
</body>
</html>