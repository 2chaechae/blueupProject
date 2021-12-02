<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 컨텐츠 시작 -->
   
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 <input type="hidden" id="confirmBtn">
  
 <div id="pageTop"></div>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.form.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/helpdesk/helpdesk.js?v=prod-version-858_20211102145956"></script>



<form name="gForm" id="gForm" action="/test/qnaWriteProc.do" method="post">
   <input type="hidden" name="csoMtmInq.cstmrEmail" id="cstmrEmail" value="">
   <input type="hidden" name="csoMtmInq.inqTpCd" id="inqTpCd">
   <input type="hidden" name="csoMtmInq.inqCont" id="inqContent">
   <input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileNm" id="inputfileNm">
   <input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileUrl" id="inputfileUrl">
   <input type="hidden" name="csoMtmInqAtchFile.mtmInqAtchFileCpcty" id="inputfileSize">
   <input type="hidden" id="ordNum1" name="ordGod.ordNo" class="input-style01" style="width:443px;">
   <input type="hidden" name="referer" value="https://www.mlb-korea.com/mypage/inquiry/list">

   <div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
      <div class="container">

         <h2 class="title01">QnA</h2>
         
<%@ include file="mypageMenu.jsp"%>

         <main class="contents oto_inquiryWrite-wrap" id="contents">

            <div class="location-contents">
               <p class="location">
                  <span>Home</span>
                  <span>고객센터</span>
                  <strong title="현재 위치">QnA</strong>
               </p>
            </div>

            <div class="board-write">
               <table summary="1:1고객상담 입력">
                  <caption>QnA</caption>
                  <colgroup>
                     <col style="width:200px;">
                     <col>
                  </colgroup>
                  <tbody><tr>
                     <th scope="row"><label for="boardWriteName">이름</label> <span class="required">*</span></th>
                     <td>
                        <input type="text" id="boardWriteName" class="input-style01" name="user_name" value="${user.user_name }" style="width:150px;" readonly="readonly">
                        <span class="error-msg" id="boardWriteName-msg" style="display:none;"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row"><label for="boardWriteEmail">답변 이메일</label> <span class="required">*</span></th>
                     <td id="emailBox">
                        <input type="text" name="email_id" id="boardWriteEmail" class="input-style01" value="${user.email_id }" style="width:110px;" readonly>
                        <span class="at">@</span>
                        <input type="text" name="email_address" id="boardWriteEmail2" class="input-style01" value="${user.email_address }" style="width:110px;" readonly>
         
                        <!-- //select -->
                        <span class="error-msg" style="display:none;" id="boardWriteEmail-msg"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row"><label for="boardWriteContact">휴대전화</label> <span class="required">*</span></th>
                     <td>
                        <div class="inputcallBox">
                           <input type="text" class="input-style01" id="boardWriteContact" name="phone1" value="${user.phone1 }" style="width:64px;" readonly>
                           <span class="hyphen">-</span>
                           <input type="text" class="input-style01" id="boardWriteContact2" name="phone2" value="${user.phone2 }" style="width:70px;" readonly>
                           <span class="hyphen">-</span>
                           <input type="text" class="input-style01" id="boardWriteContact3" name="phone3" value="${user.phone3 }" style="width:70px;" readonly>
                        </div>

                     
                     </td>
                  </tr>
            
                  <tr>
                     <th scope="row"><label for="boardWriteSort">상담분류</label> <span class="required">*</span></th>
                     <td>
                     
                        <select name="qna_type" style="width: 200px;
                                                 padding: .8em .5em;
                                                 font-family: inherit;
                                                 background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
                                                 border: 1px solid #999;
                                                 border-radius: 0px;
                                                 -webkit-appearance: none;
                                                 -moz-appearance: none;
                                                 appearance: none;">
                           <option value="배송지연/불만" selected>배송지연/불만</option>
                           <option value="반품문의">반품문의</option>
                           <option value="A/S문의">A/S문의</option>
                           <option value="환불문의">환불문의</option>
                           <option value="주문결제문의">주문결제문의</option>
                           <option value="취소문의">취소문의</option>
                           <option value="교환문의">교환문의</option>
                           <option value="상품정보문의">상품정보문의</option>
                           <option value="기타문의">기타문의</option>
                           <option value="이벤트문의">이벤트문의</option>
                           <option value="사은품문의">사은품문의</option>
                           <option value="제휴문의">제휴문의</option>
                        </select>
                        
                        <span class="error-msg" id="boardWriteSort-msg" style="display:none;"></span>
                     </td>
                     <input type="hidden" name="userNo" value="${user_no }" />
                  </tr>
                  <tr>
                     <th scope="row"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
                     <td>
                        <input type="text" id="boardWriteTitle" class="input-style01" name="title" placeholder="제목을 입력해 주세요." style="width:515px;">
                        <span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row"><label for="boardWriteContent">내용</label> <span class="required">*</span></th>
                     <td>
                        <textarea name="content" cols="30" rows="10" id="boardWriteContent" placeholder="내용을 입력해 주세요." style="width:515px; height:150px;"></textarea>
                        
                     </td>
                  </tr>

               </tbody></table>
            </div>

            <ul class="text-list02 col-type01">
               <li>문의하신 내용에 대한 답변은 <span class="txt13-000">마이페이지 &gt; 활동정보 &gt; QnA</span>에서 확인하실 수 있습니다.</li>
            </ul>
             <div class="btnWrapBox">
               <a href="#" id="cancelBtn" class="btn btn-style03">취소</a>
               <!-- onClick="document.getElementById('gForm').submit()" -->
               <input type="button" id="submitBtn" class="btn fill btn-style02" style="width:200px; margin-right:2px; padding: 20px 40px; font-size: 14px;
                                             box-sizing: border-box; border: 1px sold black; color: white; background: black;
                                             display: inline-block; vertical-align: middle; text-align: center; cursor: pointer; white-space: nowrap; line-height:50%;
                                             min-width: 220px;" value="저장" />
            </div>
         </main>
      </div>
   </div>
   </form>

   <!-- layerpopup -->
   <article id="layerPopup02" class="layer-popup orderInfoSearch-pop">
      <section class="layer-popup-cont" tabindex="0">
         <h2>주문 찾기</h2>
         <div class="layer-cont scroll">

            <div class="orderInfoSearch-popWrap">
               <dl class="period-wrap period-type02">
                  <!-- 기간달력 -->
                  <dt>조회기간</dt>
                  <dd>
                     <script>
                        $(document).ready(function(){
                           var dateFormat = "yyyy.mm.dd",
                           from = $( "#calendarFrom" ).datepicker().on( "change", function() {
                              to.datepicker( "option", "minDate", getDate( this ) );
                           }),
                           to = $( "#calendarTo" ).datepicker().on( "change", function() {
                              from.datepicker( "option", "maxDate", getDate( this ) );
                           });

                           function getDate( element ) {
                              var date;
                              try {
                                 date = $.datepicker.parseDate( dateFormat, element.value );
                              } catch( error ) {
                                 date = null;
                              }
                              return date;
                           }
                        });
                     </script>
                     <a href="#" id="month3btn" class="btn sm d_radio_select on" onclick="inputCalendar3();"><span>3개월</span></a>
                     <a href="#" id="month6btn" class="btn sm d_radio_select" onclick="inputCalendar6();"><span>6개월</span></a>
                     <!-- <a href="#" id="month12btn" class="btn sm d_radio_select" onclick="inputCalendar12();"><span>12개월</span></a> -->
                     <input type="text" class="calendar hasDatepicker" id="calendarFrom" readonly="">
                     <input type="text" class="calendar hasDatepicker" id="calendarTo" readonly="">
                     <a href="#" class="btn sm" id="btnlistsearch">검색</a>
                     <p class="calendar-info-txt">시작일로부터 최대 1년단위로 조회가 가능합니다.</p><!-- 2018-08-13 -->
                  </dd>
               </dl>

               <ul class="text-list02">
                  <li>2019년 2월 25일 이후 주문만 조회 가능합니다.</li>
                  <li>2019년 2월 25일 이전 주문은 고객센터 (080-807-0012) 로 문의해 주시면 답변해 드리겠습니다.</li>
               </ul>

               <div id="ordGodList">
                  <div class="board-list">
                     <table>
                        <caption>주문찾기 주문정보, 주문일자, 상품명, 수량, 결제금액, 주문/배송상태</caption>
                        <colgroup>
                           <col style="width:40px;">
                           <col style="width:130px;">
                           <col style="width:80px;">
                           <col>
                           <col style="width:40px;">
                           <col style="width:100px;">
                           <col style="width:100px;">
                        </colgroup>
                        <thead>
                           <tr>
                              <th scope="col"></th>
                              <th scope="col">주문정보</th>
                              <th scope="col">주문일자</th>
                              <th scope="col">상품명</th>
                              <th scope="col">수량</th>
                              <th scope="col">결제금액</th>
                              <th scope="col">주문/배송상태</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td colspan="7" class="no-result">주문내역이 없습니다.</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
            <div class="btnWrapBox">
               <a href="#" id="btnSelectOrdNo" class="btn fill">확인</a>
            </div>

         </div>
         <div class="layer-popup-close">
            <button type="button" class="d_layer_close">닫기</button>
         </div>
      </section>
   </article>
   <!-- //layerpopup -->

   <form id="fTempImage" name="fTempImage" method="POST" style="display:none;"> <input type="hidden"></form>
<%@ include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
   //목록으로 버튼 클릭 시
   $('#cancelBtn').on('click',function(){
      location.href="/test/qnaList.do?pageNum=1&user_no="+${user_no};
   });
});

$(document).ready(function(){
   //목록으로 버튼 클릭 시
   $('#submitBtn').on('click',function(){
      var title = $('#boardWriteTitle').val();
      var content = $('#boardWriteContent').val();
      
      
      if(title.trim()==''){
         alert('제목을 입력해주세요');
         return;
      }
      if(content.trim()==''){
         alert('내용을 입력해주세요');
         return;
      }
      $('#gForm').submit();
   });
});

</script>
</html>