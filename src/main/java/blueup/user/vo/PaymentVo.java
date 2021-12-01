package blueup.user.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentVo {
	int user_no;
	int delivery_fee;//0원처리
	String address; //주소
	int order_price;
	String order_means;
	Date order_time; //now
	int used_point;
	int coupon_discount;
	String receiver;
	String purchaseconfirm; //만약 무통장 아니면 yes 처리
	String buyer_name; 
	String message;
	String couponName;
	
	int order_no; //max()해서 가져오기
	int product_no;
	int quantity;
	int product_price;
	String product_name;
	String order_status;
	String product_size;
	Date payment_time;
	Date delivery_start;
	Date delivery_end;
	Date cancel_date;
	String product_color;
	String phone1;
	String phone2;
	String phone3;
	int discount_rate;//0
	String main_image;
	String refund_bank;
	String refund_account;
	int refund_price;
	String refund_means;
	boolean review_status;
	
}
