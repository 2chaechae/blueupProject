package blueup.user.main.vo;

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
	Date coupon_begin;
	Date coupon_end;
	String member_level; //ȸ�� ���
	boolean usable; //��밡�� ����
	
}
