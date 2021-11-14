package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartOptionVo {
	int stock_no;
	int product_no;
	int stock_quantity;
	int clothes_size;
	String color;
	int product_price;
	String category_name;
	String detailed_category_name;
	String main_image;
}
