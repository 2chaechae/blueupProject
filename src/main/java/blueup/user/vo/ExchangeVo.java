package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ExchangeVo {
	int exchange_no; // 교환 번호
	int user_no; // 회원 번호
	int order_no; // 구매 번호
	int product_no; // 제품 번호
	String reason_for_exchange; // 교환 사유
	boolean reject; // 교환 가능 여부
	String reason_for_reject; // 교환 거부 사유
	String exchange_option; // 교환할 옵션
}
