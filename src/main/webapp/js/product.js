/*전체상품 조회 (상단메뉴)*/

var user_no = localStorage.getItem("user_no");

function checkCategoryAll(element){
	var first = $(element).text();
	location.href="/test/getCategoryAll.do?category_name="+first+"&user_no="+user_no;
}   

/* 하위 카테고리로 상품 조회 (상단메뉴)*/
function checkCategoryUp(element){
		var first = $(element).closest('.select').children('a').text();
		var second = $(element).text();
		location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second+"&user_no="+user_no;
}	

/*하위 카테고리로 상품 조회 (상품 조회 화면)*/
function checkCategoryDown(element){
	var first = $('#cate').text();
	alert(first);
	var second = $(element).text();
	location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second+"&user_no="+user_no;
}