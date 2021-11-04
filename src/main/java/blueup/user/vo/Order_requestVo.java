package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class Order_requestVo {
	int order_no; // 주문 번호
	int user_no; // 회원 버호
	int delivery_fee; //
	String address;
	int order_price; //주문 금액
	String order_means; // 주문 수단
	String order_status; //결제 상황
	Date order_time; //결제 시간
	int used_point; //사용 포인트
	int coupon_discount; // 쿠폰 할인 금액
	String receiver; //수령인
	String refund_account; //환불 계좌
}
