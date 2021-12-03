package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartOptionVo {
	// stock & prodcut join
	int stock_no;
	int product_no;
	String product_name;
	int stock_quantity;
	String product_size;
	String product_color;
	int product_price;
	String category_name;
	String detailed_category_name;
	String main_image;
	int discount;
}
