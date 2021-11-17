package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CartVo {
	int cart_no; // 카트번호
	int user_no; // 회원번호
	int product_no; // 제품 번호
	String product_name;// 구매 상품명
	int quantity; // 구매 수량
	int total_price; // 총 가격
	/* 추가한것 아래 */
	String product_color; //구매 색상
	String product_size; //구매 사이즈
	String main_image; //상품 사진
}
