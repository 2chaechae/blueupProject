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
	String product_name;// 제품명
	int quantity; // 구매수량
	int total_price; // 총 가격
	/* 추가한것 아래 */
	String product_color; //색상
	String product_size; //사이즈
}
