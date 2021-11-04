package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Order_detailVo {
	int order_detail_no; //주문 디테일 번호
	int order_no; //주문 번호
	int product_no; //상품 번호
	int product_quantity; //주문 수량
	int product_price; //가격
	String product_name; //상품명
	String order_status;//주문 상황
	String clothes_size; //사이즈
	Date payment_time; //결제 시간
	Date delivery_start;// 배송시작일
	Date delivery_end; //배송완료일
	Date cancel_date; //취소일자 (널 가능)
	
}
