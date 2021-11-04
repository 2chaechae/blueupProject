package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Deposit_without_bankbookVo {
	int deposit_without_bankbook_no; // 무통장 입금 번호
	int order_no; // 주문 번호
	String deposit_bank; // 입금은행
	int order_price; // 입금액 == 주문 테이블의 주문 금액
	Date deadline; // 마감일
	boolean deposit_status; // 입금여부
	Date deposit_time; // 입금 시간
}
