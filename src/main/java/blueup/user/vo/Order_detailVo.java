package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Order_detailVo {
	int order_detail_no; //�ֹ� ������ ��ȣ
	int order_no; //�ֹ� ��ȣ
	int product_no; //��ǰ ��ȣ
	int product_quantity; //�ֹ� ����
	int product_price; //����
	String product_name; //��ǰ��
	String order_status;//�ֹ� ��Ȳ
	String clothes_size; //������
	Date payment_time; //���� �ð�
	Date delivery_start;// ��۽�����
	Date delivery_end; //��ۿϷ���
	Date cancel_date; //������� (�� ����)
	
}
