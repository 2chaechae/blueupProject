package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//�Ϲ� ��ǰ�� ���� vo��ü
public class ProductDetailVo {
	int product_no;		// ��ǰ��ȣ
	String product_name;// ��ǰ��
	int product_price; 	// ����
	int discount;		// ���ΰ���
	int delivery_fee;	// ��ۺ�
	String product_size;// ������
	String product_color;		// ����
	String main_image;	// ��ǥ �̹���
	String detailed_product_content;// ����
	String content_type;
	int user_no;
	int wish_no; 
}
