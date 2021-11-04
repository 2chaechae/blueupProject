package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Card_recordVo {
	int card_record_no; //카드 결제 내역 번호
	int order_no; //주문 번호
	String card_type; //카드 타입
	String card_no1; 
	String card_no2;
	String card_no3;
	String card_no4;
	int order_price;
	String expiration_month; //카드 유효기간(월)
	String expiration_year; //카드 유효기간(년)
	int installment_duration; //할부기간(달)
	boolean payment_approval; //결제승인
	Date payment_time; //결제시간
}
