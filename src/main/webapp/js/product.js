/*전체상품 조회 (상단메뉴)*/
function checkCategoryAll(element){
	var first = $(element).text();
	location.href="/test/getCategoryAll.do?category_name="+first;
}   

/* 하위 카테고리로 상품 조회 (상단메뉴)*/
function checkCategoryUp(element){
		var first = $(element).closest('.select').children('a').text();
		var second = $(element).text();
		location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second;
}	

/*하위 카테고리로 상품 조회 (상품 조회 화면)*/
function checkCategoryDown(element){
	var first = $('#cate').text();
	alert(first);
	var second = $(element).text();
	location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second;
}