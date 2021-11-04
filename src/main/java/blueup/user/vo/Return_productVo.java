package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Return_productVo {
	int return_product_no; //반품 테이블 번호
	int user_no; //회원번호
	int order_no; //주문 번호
	int product_no; //제품 번호
	int coupon_discount; //쿠폰 할인 금액
	int used_point; //포인트 할인 금액
	String reason_for_return; //반품 사유
	boolean return_status; //반품 상태
	String reason_for_reject; //반품 거절 사유
}
