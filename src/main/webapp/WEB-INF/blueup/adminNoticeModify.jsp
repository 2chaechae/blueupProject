<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>

<!-- 컨텐츠 시작 -->
   
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 <input type="hidden" id="confirmBtn">
  
 <div id="pageTop"></div>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.form.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/helpdesk/helpdesk.js?v=prod-version-858_20211102145956"></script>



<form name="gForm" id="gForm" action="/test/modifyNoticeProc.mdo" method="post">
   <input type="hidden" id="admin_id" name="admin_id" value="${admin_id }" />
   <input type="hidden" id="admin_pw" name="admin_password" value="${admin_pw }" />
   <input type="hidden" id="pageNum" name="pageNum" value="${pageNum }" />
   <input type="hidden" id="notice_no" name="notice_no" value="${notice_no }" />
   <div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
      <div class="container">

         <h2 class="title01">공지사항 등록</h2>
         

         <main class="contents oto_inquiryWrite-wrap" id="contents">

            <div class="board-write" style="width:900px; height:295px; margin:0 auto; margin-top:20px;">
               <table>
                  <caption>공지사항</caption>
                  <colgroup>
                     <col style="width:200px;">
                     <col>
                  </colgroup>
                  <tbody>
                  <tr>
                     <th scope="row" style="text-align: center;"><label for="boardWriteSort">공지분류</label> <span class="required">*</span></th>
                     <td>
                     
                        <select id="sel" name="notice_type" style="width: 200px;
                                                 padding: .8em .5em;
                                                 font-family: inherit;
                                                 background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
                                                 border: 1px solid #999;
                                                 border-radius: 0px;
                                                 -webkit-appearance: none;
                                                 -moz-appearance: none;
                                                 appearance: none;">
                           <option value="이벤트" selected>이벤트</option>
                           <option value="시스템">시스템</option>
                           <option value="연휴공지">연휴공지</option>
                           <option value="업데이트">업데이트</option>
                           <option value="배송공지">배송공지</option>
                           <option value="입고지연">입고지연</option>
                        </select>
                        
                        <span class="error-msg" id="boardWriteSort-msg" style="display:none;"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row" style="text-align: center;"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
                     <td>
                        <input type="text" id="boardWriteTitle" class="input-style01" name="notice_title" value="${notice.notice_title }" style="width:586px;">
                        <span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row" style="text-align: center;"><label for="boardWriteContent">내용</label> <span class="required">*</span></th>
                     <td>
                        <textarea name="notice_content" cols="30" rows="10" id="boardWriteContent" placeholder="내용을 입력해 주세요." style="width:515px; height:150px;">${notice.notice_content }</textarea>
                        
                     </td>
                  </tr>

               </tbody></table>
            </div>


             <div class="btnWrapBox">
               <input type="button" id="cancelBtn" class="btn btn-style03" value="목록으로" />
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

  
<script>


$(document).ready(function(){
	   //취소 버튼 클릭 시
	   $('#cancelBtn').on('click',function(){
		   var admin_id = $('#admin_id').val();
		   var admin_pw = $('#admin_pw').val();

	      location.href='/test/getAdminLoginCheck.mdo?pageNum=1&admin_id='+admin_id+'&admin_password='+admin_pw;
	   });
	});

$(document).ready(function(){
	   //저장 버튼 클릭 시
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