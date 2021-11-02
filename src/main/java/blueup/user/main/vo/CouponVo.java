package blueup.user.main.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CouponVo {
	int coupon_no; //쿠폰 번호
	String coupon_name;
	int user_no;
	int coupon_discount;// 할인 금액
	Date coupon_begin;
	Date coupon_end;
	String member_level; //회원 등급
	boolean usable; //사용가능 여부
	
}
