package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Return_productVo {
	int return_product_no; //��ǰ ���̺� ��ȣ
	int user_no; //ȸ����ȣ
	int order_no; //�ֹ� ��ȣ
	int product_no; //��ǰ ��ȣ
	int coupon_discount; //���� ���� �ݾ�
	int used_point; //����Ʈ ���� �ݾ�
	String reason_for_return; //��ǰ ����
	boolean return_status; //��ǰ ����
	String reason_for_reject; //��ǰ ���� ����
}
