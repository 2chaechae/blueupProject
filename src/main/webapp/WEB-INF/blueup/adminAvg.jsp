<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../view/mlb/adminHeader.jsp"%>

<!-- 컨텐츠 시작 -->
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.order.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/mypage/mypage.pay.js?v=prod-version-858_20211102145956"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/jquery.serializejson.min.js?v=prod-version-858_20211102145956"></script>


	<!-- 컨텐츠 시작 -->
	<div class="contain my od lnblist-Wrap" id="contain">
		<div class="container">

			<h2 class="title01">통계 관리</h2>
	<!-- 사이드 메뉴 -->
	<%@ include file="../../../view/mlb/adminMenu.jsp"%>
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
										
										<ul>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 01월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 02월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 03월</a></li>								
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 04월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 05월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 06월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 07월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 08월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 09월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 10월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 11월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2021년 12월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 01월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 02월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 03월</a></li>								
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 04월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 05월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 06월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 07월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 08월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 09월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 10월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 11월</a></li>
											<li><a href="javascript:void(0)" onclick="getdate(this);">2020년 12월</a></li>
										</ul>
										
									</div>
									<!-- //select -->
								</dd>
								<dt class="blind">조회기간</dt>
									<dd>
									<a href="javascript:void(0)" class="btn sm" onclick="checkdate();">검색</a>
									
								</dd>
								</dl>						
						</form>
					</div>
					
					<!-- order Result -->
					<div class="odSearchResult">	
						
						<!-- 차트 시작 -->	
						<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   
						    <script type="text/javascript">
						    
						     google.charts.load('current', {'packages':['corechart']});
						     google.charts.setOnLoadCallback(drawChart);
						
						    function drawChart() {
							  var start = "${start}";
							  var end = "${end}";
						      var jsonData = $.ajax({
						    	  url : "/test/getChartData.mdo",
						    	  dataType : "json",
						    	  data : {"start" : start, "end" : end},
						    	  async : false
						      }).responseText;
						      console.log(jsonData);
						      
						      var data = new google.visualization.DataTable(jsonData);
						      var chart = new google.visualization.ComboChart(document.getElementById('linechart_material'));
						      
						      var options = {
						    		   	title : '일자별 주문금액 및 주문수 통계',
									    width:900,
						                height:500,
								        vAxis: {
								        	  0 : {minValue:0, logScale: false},
								        	  1 : {minValue:0, maxValue:100, logScale: false}
								        },
								        hAxis: {title: 'day', maxValue:31, minValue:1},
								        seriesType: 'bars',
								        series: {
					                    	  0: {axis: 'price', targetAxisIndex:0},
					                    	  1: {axis: 'count', targetAxisIndex:1, type: 'line'}
											},
										axes: {
									     	  y: {
									     		 	price: {label: '주문금액(원)'}, 
									     			count: {side: 'top', label: '주문건(수)'} 
									         }
										}
						           };
		
						   	 chart.draw(data, options);
						    
							 }
						   
					         
					</script>
    
     <!-- 첫번째 차트 입력 위치 -->
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
	<script type="text/javascript">
	var year = "";
	var month = "";
	var start = year + "-" + month + "-01";
	function getdate(element){
		var date = $(element).text();
		year = date.substring(0,4);
		month = date.substring(6,8);
		start = year + "-" + month + "-01";
		alert("year" + year);
		alert("month" + month);
		alert("start" + start);
	}
	
	function checkdate(){
		var end = ""
		if(year == "" || month == ""){
			alert("년/월을 선택해주세요");
		}else{
			switch(month){
			case '01' :
				end = year + "-" + month + "-31";
				break;
			case '02' :
				end = year + "-" + month + "-28";
				break;
			case '03' :
				end = year + "-" + month + "-31";
				break;
			case '04' :
				end = year + "-" + month + "-30";
				break;
			case '05' :
				end = year + "-" + month + "-31";
				break;
			case '06' :
				end = year + "-" + month + "-30";
				break;
			case '07' :
				end = year + "-" + month + "-31";
				break;
			case '08' :
				end = year + "-" + month + "-31";
				break;
			case '09' :
				end = year + "-" + month + "-30";
				break;
			case '10' :
				end = year + "-" + month + "-31";
				break;
			case '11' :
				end = year + "-" + month + "-30";
				break;
			case '12' :
				end = year + "-" + month + "-31";
				break;
			}
			alert("start" + start);
			alert("end" + end);
			location.href="/test/getChartForm.mdo?start="+start+"&end="+end;
		}
	}
	</script>
</body>
</html>
