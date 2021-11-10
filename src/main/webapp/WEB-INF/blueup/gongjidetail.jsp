<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<!-- 컨텐츠 시작 -->
   <head>
  <link rel="stylesheet" href="https://static.mlb-korea.com/pc/static/css/customer.css">
   <script type="text/javascript" src="/javascript/message/helpdesk_ko.js?v=prod-version-858_20211102145956"></script>
 <input type="hidden"  id="confirmBtn" />
 
  
  </head>
 <div id="pageTop"></div>
<div class="contain cs" id="contain">
      <div class="container">
         <h2 class="title01">공지사항</h2>
         <main class="contents noticeView-wrap" id="contents">
            <div class="location-contents">
               <p class="location">
                  <span>Home</span>
                  <span>고객센터</span>
                  <strong title="현재 위치">공지사항</strong>
               </p>
            </div>

            <!-- table S -->
            <div class="board-view">
               <div class="board-header">
                  <!-- <strong>[이벤트 당첨] MLB &#039;블랙데이 프로모션&#039; 당첨자 공지</strong>제목
                  <p><b>2021-05-03</b>(조회수<em>2857</em>)</p> -->
                
                  <strong>[${getnoticeone.notice_type}]&nbsp;  ${getnoticeone.notice_title}</strong><!-- 제목 -->
                  <p><b>${getnoticeone.notice_time}</b></p><!-- 시간 -->
               </div>
               
               <!-- <공지사항 선택 내용> -->
              
							 <dl>
							 <table>
								<tr>
        <td style="padding-top:100px;padding-bottom:150px;" >${getnoticeone.notice_content}</td>
        </tr>
        <!-- </dd> -->
							</table>
							</dl>
					
						<!--//for문//-->
							
                           
                           <!--  </tbody> -->
                    
                </div>
               
                <!-- <///공지사항 선택 내용> -->
               <!-- 내용 -->
            </div>
            <!--//table E -->

            <div class="btn-wrap">
               <a href="/test/getNoticeList.do" class="btn lg fill">목록</a>
            </div>

         </main>

      </div>
   </div>
<!--// 컨텐츠 끝 -->
   


<%@ include file="/footer.jsp" %>
</body>
</html>