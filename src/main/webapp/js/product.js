function check(element){
	alert('test');
	var second = $(element).text();
	$(element).css('font-weight','bold');
	location.href="/test/getProductByDetail.do?detailed_category_name="+second;
}

function checkCategory(element){
		var first = $(element).closest('.selected').children('a').text();
		var second = $(element).text();
		$(element).css('font-weight','bold');
		location.href="/test/getCategory.do?category_name="+first+"&detailed_category_name="+second;
}