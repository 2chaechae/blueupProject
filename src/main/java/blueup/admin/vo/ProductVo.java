package blueup.admin.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//�Ϲ� ��ǰ�� ���� vo��ü
public class ProductVo {
	int product_no;		// ��ǰ��ȣ
	String product_name;// ��ǰ��
	int price; 			// ����
	int discount;		// ���ΰ���
	int delivery_fee;	// ��ۺ�
	String clothes_size;// ������
	String color;		// ����
	boolean display_status;// ���� ����
	Date registration_time;// ��� �ð�
	String main_image;	// ��ǥ �̹���
	String product_content;// ����
	int discount_rate;		// ������
	String category_name;	//ī�װ���
	String detailed_category_name; //���� ī�װ���
	
	String searchKeyword; //�˻��� ���� �־���.
}