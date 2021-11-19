package blueup.admin.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StockVo {
	int stock_no;
	int product_no; // 제품 번호
	int stock_quantity; // 재고량
	String product_size; // 사이즈
	String product_color; // 색상
	int unit_price; // 단가
	String product_name; // 제품명
	int addOrDeduct; //수량 차감 혹은 증가
	String category_name; // 카테고리 이름
	String detailed_category_name; //세부 카테고리명
	String searchKeyword; //검색 키워드
}
