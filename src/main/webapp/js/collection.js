$(document).ready(function(){


// best gift 화살표 클릭시 이동	
	var i=0;
	var num=$(".coll_i").length;//.size()
	
	
	$(".coll_prev").css({"opacity":"0.6"});
	//console.log(num);
	$(".coll_prev").click(function(){ // <
		if(i>0){
			$(".coll_next").css({"opacity":"1"});
			i--;
			var move = -1600*i;
			//console.log(i);
			$("#coll_con2").stop().animate({left:move},500);
			$(".coll_prev").css({"opacity":"0.6"});
			
			$(".sn1").text("1 ");
			var n = $(".coll_i").attr("data-n");
			n++;
			if(n==2){
				n=1;
			}
			$(".coll_t1 p").hide();
			$(".coll_t1 .sn"+n).show();
			//console.log(n);
		}else{
			return false;
		}
	});
	
	$(".coll_next").click(function(){ // >
		if(i<1){
			$(".coll_prev").css({"opacity":"1"});
			i++;
			var move = -990*i;
			//console.log(i);
			$("#coll_con2").stop().animate({left:move},500);
			$(".coll_next").css({"opacity":"0.6"});
			
			$(".sn1").text("2 ");
			var n = $(".coll_i").attr("data-n");
			n++;
			if(n==2){
				n=1;
			}
			$(".coll_t1 p").hide();
			$(".coll_t1 .sn"+n).show();
			//console.log(n);
		}else{
			return false;
		}
	});
	
	//스크롤
  $("#coll_tit, #coll_con, #coll_scroll").css("opacity","0");
  
	$(window).load(function(){
    $("#coll_tit").delay(300).animate({"opacity":"1"});
		$("#coll_con").delay(500).animate({"opacity":"1"});
		$("#coll_scroll").delay(700).animate({"opacity":"1"});
		
  });
	
	
	//새로고침시 바로 실행
	 $(".items, #notice_wrap").css("opacity","0");
	
	$(window).load(function(){
    $(".items").eq(0).animate({"opacity":"1"});
  });
	
	
	
	
	}); //end