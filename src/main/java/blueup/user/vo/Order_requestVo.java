package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class Order_requestVo {
	int order_no; // �ֹ� ��ȣ
	int user_no; // ȸ�� ��ȣ
	int delivery_fee; //
	String address;
	int order_price; //�ֹ� �ݾ�
	String order_means; // �ֹ� ����
	String order_status; //���� ��Ȳ
	Date order_time; //���� �ð�
	int used_point; //��� ����Ʈ
	int coupon_discount; // ���� ���� �ݾ�
	String receiver; //������
	String refund_account; //ȯ�� ����
}
