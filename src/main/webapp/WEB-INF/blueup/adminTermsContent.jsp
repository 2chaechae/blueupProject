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



<form name="gForm" id="gForm" action="/test/writeNoticeProc.mdo" method="post">
   <input type="hidden" id="admin_id" name="id" value="${admin_id }" />
   <input type="hidden" id="admin_pw" name="pw" value="${admin_pw }" />
   <input type="hidden" id="page" name="page" value="${termsPm }" />
   <input type="hidden" id="terms_no" name="terms_no" value="${terms_no }" />

   <div class="contain my cs lnblist-Wrap" id="contain" style="padding-top: 50px;">
      <div class="container">

         <h2 class="title01">약관</h2>
         

         <main class="contents oto_inquiryWrite-wrap" id="contents">

            <div class="board-write" style="width:900px; height:230px; margin:0 auto; margin-top:20px;">
               <table summary="1:1고객상담 입력">
                  <caption>약관</caption>
                  <colgroup>
                     <col style="width:200px;">
                     <col>
                  </colgroup>
                  <tbody>

                  <tr>
                     <th scope="row" style="text-align: center;"><label for="boardWriteTitle">제목</label> <span class="required">*</span></th>
                     <td>
                        <input type="text" id="boardWriteTitle" class="input-style01" name="notice_title" value="${terms.terms_title }" style="width:586px;" readonly>
                        <span class="error-msg" id="boardWriteTitle-msg" style="display:none;"></span>
                     </td>
                  </tr>
                  <tr>
                     <th scope="row" style="text-align: center;"><label for="boardWriteContent">내용</label> <span class="required">*</span></th>
                     <td>
                        <textarea name="notice_content" cols="30" rows="10" id="boardWriteContent" style="width:515px; height:150px;" readonly>${terms.terms_content }</textarea>
                        
                     </td>
                  </tr>

               </tbody></table>
            </div>


             <div class="btnWrapBox">
               <input type="button" id="toListBtn" class="btn btn-style03" value="목록으로" style="width:200px; margin-right:2px; padding: 20px 40px; font-size: 14px;
                                             box-sizing: border-box; border: 1px sold black; color: white; background: black;
                                             display: inline-block; vertical-align: middle; text-align: center; cursor: pointer; white-space: nowrap; line-height:50%;
                                             min-width: 220px;"/>
               <input type="button" id="deleteBtn" class="btn btn-style03" value="삭제" style="width:200px; margin-right:2px; padding: 20px 40px; font-size: 14px;
                                             box-sizing: border-box; border: 1px sold black; color: black; background: white;
                                             display: inline-block; vertical-align: middle; text-align: center; cursor: pointer; white-space: nowrap; line-height:50%;
                                             min-width: 220px;"/>
               <input type="button" id="modifyBtn" class="btn fill btn-style02" style="width:200px; margin-right:2px; padding: 20px 40px; font-size: 14px;
                                             box-sizing: border-box; border: 1px sold black; color: white; background: black;
                                             display: inline-block; vertical-align: middle; text-align: center; cursor: pointer; white-space: nowrap; line-height:50%;
                                             min-width: 220px;" value="수정" />
            </div>
         </main>
      </div>
   </div>
   </form>

  
<script>
$(document).ready(function(){
   //목록으로 버튼 클릭 시
   $('#toListBtn').on('click',function(){
	  	var id = $('#admin_id').val();
	  	var pw = $('#admin_pw').val();
	  	var page = $('#page').val();

        location.href='/test/getAdminLoginCheck.mdo?termsPageNum='+page+'&admin_id='+id+'&admin_password='+pw;
   });
});

$(document).ready(function(){
   //수정 버튼 클릭 시
   $('#modifyBtn').on('click',function(){
	   var id = $('#admin_id').val();
	   var pw = $('#admin_pw').val();
	   var page = $('#page').val();
	   var no = $('#terms_no').val();
      
      location.href='/test/modifyTerms.mdo?admin_id='+id+'&admin_password='+pw+'&termsPageNum='+page+'&terms_no='+no;
   });
});

$(document).ready(function(){
	   //삭제 버튼 클릭 시
	   $('#deleteBtn').on('click',function(){
		   var id = $('#admin_id').val();
		   var pw = $('#admin_pw').val();
		   var page = $('#page').val();
		   var no = $('#terms_no').val();
	      
	      location.href='/test/deleteTerms.mdo?admin_id='+id+'&admin_password='+pw+'&termsPageNum='+page+'&terms_no='+no;
	   });
	});

</script>
</html>