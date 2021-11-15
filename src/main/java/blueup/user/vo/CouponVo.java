package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CouponVo {
	int coupon_no; //���� ��ȣ
	String coupon_name;
	int user_no;
	int coupon_discount;// ���� �ݾ�
	String coupon_begin;
	String coupon_end;
	String coupon_type;
	boolean usable;
	String remarks;
	int perPageNumber;
	int startRow;
	Date coupon_use_date;
}
