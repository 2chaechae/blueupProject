package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//일반 상품에 대한 vo객체
public class ProductDetailVo {
	int product_no;		// 제품번호
	String product_name;// 제품명
	int product_price; 	// 가격
	int discount;		// 할인가격
	int delivery_fee;	// 배송비
	String product_size;// 사이즈
	String product_color;		// 색상
	String main_image;	// 대표 이미지
	String detailed_product_content;// 내용
	String content_type;
	int user_no;
	int wish_no; 
}
