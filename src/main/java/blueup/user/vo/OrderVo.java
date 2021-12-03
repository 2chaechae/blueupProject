package blueup.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVo {
	
	/* ��ǰ���� = product table */
	String main_image; // ��ǰ�̹���
	String product_name; // ��ǰ�̸�
	int product_price; // ��ǰ����
	String product_color; // ��ǰ����
	String product_size; // ��ǰ������
	int quantity; // ��ǰ����
	int discount; // ����
	int total_price; // ��ǰ �� ���� = ��ǰ���� * ����
	int all_price; // �� �ֹ� ���� = ��������
	int delivery_fee; // ��ۺ�
	int all_discount; // �� ���ΰ���
	int pay_amount; // �� ��ǰ�ֹ��ݾ�
	float expected_point; // ������������Ʈ

	/* �������� = coupon table */
	String coupon_name; // �����̸�
	int coupon_discount; // �������ΰ���
	String coupon_type; // �������� ex)���������, �ű԰�������
	Date coupon_begin;
	Date coupon_end;
	Date coupon_use_date; // ������볯¥

	/* ����Ʈ���� = point table */
	int income; // ������ ����Ʈ
	int expense; // ������ ����Ʈ
	String content; // ����Ʈ�� ���� ����
	String remarks; // ���
	Date point_date;

	/* �ֹ������� = users table */
	String user_name; // �ֹ��Ͻô� ��
	String email_id; // �̸��� ���̵�
	String email_address; // �̸����ּ�

	/* ��������� = destination table */
	String receiver; // �޴»��
	String phone1;
	String phone2;
	String phone3;
	String zipcode;
	String address;
	String detailed_address; // ���ּ�
	String request; // ����� ��û���� ���

	/* ���� �ʴ� DB �÷� */
	int product_no; // ��ǰ �ø����ȣ
	int coupon_no; // ���� �ø����ȣ
	int point_no; // ����Ʈ �ø����ȣ
	int user_no; // ����� �ø����ȣ
	int destination; // ����� �ø����ȣ
	int cart_no; // ��ٱ��� �ø����ȣ
}

