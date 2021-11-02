$(document).ready(function(){
	

	//지역검색 select	
	$("#lo2_select option").hide();
	$("#lo1_select").change(function(){
		var n15 = $(this).val();
		$("#lo2_select option").hide();
		$("#lo2_select .s"+n15).show();
		$("#lo2_select").val("전체보기");
	});
	
		
	
	
}); //end