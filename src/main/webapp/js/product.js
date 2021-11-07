/*상품 조회 화면에서 카테고리 클릭시 상품 가져오기*/
function check(element){
	var first = $('#cate').text();
	alert(first);
	var second = $(element).text();
	$(element).css('font-weight','bold');
	location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second;
}

/* 상품목록 조회시 카테고리 가져오기*/
function checkCategory(element){
		var first = $(element).closest('.selected').children('a').text();
		var second = $(element).text();
		$(element).css('font-weight','bold');
		location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second;
}                                     