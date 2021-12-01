package blueup.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderlistVo {
	/* �ֹ� ��� ��ȸ */
	String main_image; // ��ǰ �̹���
	Date order_time; // ���� �ð� = �ֹ���
	int order_no; // �ֹ� ��ȣ
	String product_name; // ��ǰ��
	int product_price; // ��ǰ ����
	String product_color; // ��ǰ ����
	String product_size; // ��ǰ ������
	int quantity; // �ֹ� ����
	String order_status; // �ֹ� ��Ȳ
	String buyer_name; // �ֹ���
	String message; // ��ۿ�û����

	/* �ֹ� ��� ����ȸ */
	// 1. �ֹ��� = order_time
	// 2. �ֹ���ȣ = order_no

	String receiver; // ������ = �޴º�
	String address; // �ּ�
	// ����ó
	String phone1;
	String phone2;
	String phone3;

	// ��ǰ�� , ��ǰ ����, ��ǰ ����, ��ǰ ������, �ֹ� ����, �ֹ� ��Ȳ
	// ��������
	int order_price; // �ֹ� �ݾ� = �� ����
	int delivery_fee; // ��ۺ�
	int discount_rate; // �ֹ� ����
	int coupon_discount; // ���� ����
	int used_point; // ��� ����Ʈ
	String order_means; // �ֹ� ����
	String refund_means; // ȯ�� ����
	String refund_bank; // ȯ�� ����
	String refund_account; // ȯ�� ����
	int refund_price; // ȯ�ұݾ�
	Date cancel_date; // ������� (�� ����)
	boolean review_status; // ���� �ۼ� Ȯ��

	/* �ʿ������ Ȥ�� ���� = DB Column */
	int user_no; // ȸ�� ��ȣ

	int order_detail_no; // �ֹ� ������ ��ȣ
	int product_no; // ��ǰ ��ȣ
	Date payment_time; // ���� �ð�
	Date delivery_start_date;// ��۽�����
	Date delivery_end_date; // ��ۿϷ���

	int cancel_quantity; // ��� ����

}
