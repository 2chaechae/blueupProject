package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class StockDeduction {
	int product_no;
	int quantity;
	String product_color;
	String product_size;
}
