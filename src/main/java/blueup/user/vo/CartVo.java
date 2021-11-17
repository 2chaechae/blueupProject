package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CartVo {
	// cart & product join
	int cart_no; // 카트번호
	int user_no; // 회원번호
	int product_no; // 제품 번호
	String product_name;// 제품명
	String product_color; //색상
	String product_size; //사이즈
	int quantity; // 구매수량
	int total_price; // 총 가격
	int delivery_fee;
	int discount_total;
	int discount_rate;
	String main_image;
	int discount;
	int all_price;
	int all_discount;
}
