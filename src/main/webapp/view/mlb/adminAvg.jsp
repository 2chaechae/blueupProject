<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp" %>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>


	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">통계 관리</h2>

<%@ include file="adminMenu.jsp" %>
<main class="contents" id="contents">
				
			 		
				<div class="orderInfoCon">

					<div class="odSearchOptBox">
						<form  method="post" id="srchForm" action ="/secured/mypage/listClaim" >
							<input type="hidden" id="srchMonth" name="srchMonth" value ="">		
							<dl class="period-wrap period-type02 clearfix">
								<!-- 기간달력 -->
								<dt class="blind">상태</dt>
								<dd class="fl">
									<!-- select -->
									
									<div class="select-style02 d_select" >
										<button type="button" class="d_select_sel" style="width:152px;"><span>연월 선택</span></button>
										<!-- 2018.12.06 항목 수정 -->
										<ul>
											<li><a href="#" onclick="setClmTpCdSearch('');">2021년 1월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('CNCL');">2021년 2월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('GNRL_EXCHG');">2021년 3월</a></li>								
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 4월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 5월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 6월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 7월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 8월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 9월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 10월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 11월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2021년 12월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('');">2020년 1월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('CNCL');">2020년 2월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('GNRL_EXCHG');">2020년 3월</a></li>								
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 4월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 5월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 6월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 7월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 8월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 9월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 10월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 11월</a></li>
											<li><a href="#" onclick="setClmTpCdSearch('RTGOD');">2020년 12월</a></li>
											<input type="hidden" id=clmTpCdSearch value=""/>									
										</ul>
										<!-- //2018.12.06 항목 수정 -->
									</div>
									<!-- //select -->
								</dd>
								<dt class="blind">조회기간</dt>
									<dd>
									<a href="#none" class="btn sm" onclick="goMyPageClaimList(); return false;">검색</a>
									
								</dd>
								</dl>						
						</form>
					</div>
					
					<!-- order Result -->
					<div class="odSearchResult">	
						
						<!-- 차트 시작 -->	
									
					<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   
    <script type="text/javascript">
    
     google.charts.load('current', {'packages':['line']});
     google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'day');
      data.addColumn('number', '주문액');
      data.addColumn('number', '주문수');

      data.addRows([
        [1,  500, 8 ],
        [2,  1000, 20 ],
        [3,  200, 1 ],
        [4,  1100, 5 ],
        [5,  800, 8],
        [6,  900, 12],
        [7,  700, 7],
        [8,  1000, 10],
        [9,  1000, 15],
        [10, 1000, 18],
        [11, 1000, 17],
        [12, 1000, 19],
        [13, 1500, 15],
        [14, 800, 10],
        [15, 700, 8],
        [16, 900, 10],
        [17, 1000, 11],
        [18, 1000, 12],
        [19, 500, 8],
        [20, 900, 7],
        [21, 800, 9],
        [22, 800, 10],
        [23, 900, 11],
        [24, 1000, 12],
        [25, 1100, 20],
        [26, 1200, 10],
        [27, 800, 15],
        [28, 900, 8],
        [29, 900, 11],
        [30, 1000, 12],
        [31, 1000, 13]
      ]);

      var options = {
    		  chart: {
    	          title: '일자별 주문금액 및 주문수 통계	'
    	        },
    	        width: 900,
    	        height: 500,
    	        series: {
    	          0: {axis: '주문액'},
    	          1: {axis: '주문수'}
    	        },
    	        axes: {
    	          y: {
    	        	  주문액: {label: '주문액 (천원)'},
    	        	  주문수: {label: '건'},
    	        }
    	      }  
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }
    </script>
    
     <div id="linechart_material" style="width: 900px; height: 500px">
     </div>
     
    
     <script type="text/javascript">
    
     google.charts.load('current', {'packages':['line']});
     google.charts.setOnLoadCallback(drawChart2);
      
    function drawChart2() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'day');
      data.addColumn('number', '방문자수');
      

      data.addRows([
    	  [1,  37.8 ],
          [2,  30.9],
          [3,  25.4],
          [4,  11.7],
          [5,  11.9],
          [6,   8.8],
          [7,   7.6],
          [8,  12.3],
          [9,  16.9],
          [10, 12.8],
          [11,  5.3],
          [12,  6.6],
          [13,  6.6],
          [14,  6.6],
          [15,  6.6],
          [16,  6.6],
          [17,  6.6],
          [18,  6.6],
          [19,  6.6],
          [20,  6.6],
          [21,  6.6],
          [22,  6.6],
          [23,  6.6],
          [24,  6.6],
          [25,  6.6],
          [26,  6.6],
          [27,  6.6],
          [28,  6.6],
          [29,  6.6],
          [30,  6.6],
          [31,  6.6]
      ]);

      var options = {
        chart: {
          title: '해당 월 방문 통계',
          subtitle: '방문자 수'
        },
        width: 900,
        height: 500
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material2'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }
    
    </script>
     <div id="linechart_material2" style="width: 900px; height: 500px">
     </div>
     
	<script type="text/javascript">
    
     google.charts.load('current', {'packages':['line']});
     google.charts.setOnLoadCallback(drawChart3);
      
    function drawChart3() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'day');
      data.addColumn('number', '페이지 방문수');
      data.addColumn('number', '상품평 수');

      data.addRows([
    	  [1,  37.8, 5 ],
          [2,  30.9, 5],
          [3,  25.4, 5],
          [4,  11.7, 5],
          [5,  11.9, 5],
          [6,   8.8, 5],
          [7,   7.6, 5],
          [8,  12.3, 5],
          [9,  16.9, 5],
          [10, 12.8, 5],
          [11,  5.3, 5],
          [12,  6.6, 5],
          [13,  6.6, 5],
          [14,  6.6, 50],
          [15,  6.6, 5],
          [16,  6.6, 5],
          [17,  6.6, 5],
          [18,  6.6, 5],
          [19,  6.6, 5],
          [20,  6.6, 5],
          [21,  6.6, 5],
          [22,  6.6, 5],
          [23,  6.6, 5],
          [24,  6.6, 5],
          [25,  6.6, 5],
          [26,  6.6, 5],
          [27,  6.6, 5],
          [28,  6.6, 5],
          [29,  6.6, 5],
          [30,  6.6, 5],
          [31,  6.6, 5]
      ]);

      var options = {
        chart: {
          title: '해당 월 상품 통계',
          subtitle: '상품통계'
        },
        width: 900,
        height: 500
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material3'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }
    
    </script>
     <div id="linechart_material3" style="width: 900px; height: 500px">
     </div>
						
					<!-- 차트 끗 -->	
					</div>		
					<!-- //order Result -->		
				</div>		
				<!--  //취소/교환/반품조회   -->
			</main>	
		</div>
	</div>
	<!--// 컨텐츠 끝 -->


</body>
</html>
