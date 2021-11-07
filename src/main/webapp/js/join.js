$(document).ready(function(){
	$(".join li a").click(function(){
		return false;
	});
	
	$(".btn_prev").css("opacity","0.5"); //이전버튼
	
	/*var i = 0;
	$(".btn_next").click(function(){ //다음
		$(".btn_prev").css("opacity","1.0");
		
		if(i<2){
			i++;
			//console.log(i); //1,2,3,4...
			var move = -500 *i;
			$("#join_con").stop().animate({left:move},500);
			
			var n=1;
			var k=n+i;
			//console.log(k); //2,3,4
			$(".join_step li a").removeClass("j_sel");
			$(".join"+k+" a").addClass("j_sel");
		}else{
			alert("회원가입이 완료되었습니다.");
			$(".btn_next").css("opacity","0.5");
		}
	});
	$(".btn_prev").click(function(){
		$(".btn_next").css("opacity","1.0");
		
		if(i>0){
			i--;
			console.log(i); //1,2,3,4...
			var move = -500 *i;
			$("#join_con").stop().animate({left:move},500);
			
			var n=1;
			var k=n+i;
			//console.log(k); //2,3,4
			$(".join_step li a").removeClass("j_sel");
			$(".join"+k+" a").addClass("j_sel");
		}else{
			alert("첫 페이지 입니다.");
			$(".btn_prev").css("opacity","0.5");
		}
	});*/
  
  
  
  
  
  
  
  
  //-전체선택/ 전체해제
	$("#chk").change(function(){
		var chk = $("#chk").prop("checked");
		if(chk == true){
			$("#chk1, #chk2, #chk3, #chk4").prop("checked",true);
			$(".type").addClass("checked");
		}else{
			$("#chk1, #chk2, #chk3, #chk4").prop("checked",false);
			$(".type").removeClass("checked");
		}
	});
	

	$("#chk1,#chk2,#chk3,#chk4").change(function(){
		var chk1 = $("#chk1").prop("checked");
		var chk2 = $("#chk2").prop("checked");
		var chk3 = $("#chk3").prop("checked");
		var chk4 = $("#chk4").prop("checked");
		
		//chk_sub항목 전체 클릭 시 chk_all 선택됨
		if(chk1==true && chk2==true && chk3==true && chk4==true){
			$("#chk").prop("checked",true);
			$(".type").addClass("checked");
		}else{
			$("#chk").prop("checked",false);
			$(".type").removeClass("checked");
		}
		
		if(chk1 == true){		//-TIFFANY&CO 이용약관
			$(".type2").addClass("checked");
		}else{
			$(".type2").removeClass("checked");
		}
		if(chk2 == true){	//개인정보 수집과 이용
			$(".type3").addClass("checked");
		}else{
			$(".type3").removeClass("checked");
		}
		if(chk3 == true){	//만14세 이상입니다.
			$(".type4").addClass("checked");
		}else{
			$(".type4").removeClass("checked");
		}if(chk4 == true){	//홍보성 정보 수신동의(선택)
			$(".type5").addClass("checked");
		}else{
			$(".type5").removeClass("checked");
		}
		
	});
  
  
  
  
	
	
}); //end