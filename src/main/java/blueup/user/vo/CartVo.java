package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CartVo {
	// cart & product join
	int cart_no; // īƮ��ȣ
	int user_no; // ȸ����ȣ
	int product_no; // ��ǰ ��ȣ
	String product_name;// ��ǰ��
	String product_color; //����
	String product_size; //������
	int quantity; // ���ż���
	int total_price; // �� ����
	int delivery_fee;
	int discount_total;
	int discount_rate;
	String main_image;
	int discount;
	int all_price;
	int all_discount;
}
