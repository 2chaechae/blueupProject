package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class CartVo {
	int cart_no; // īƮ��ȣ
	int user_no; // ȸ����ȣ
	int product_no; // ��ǰ ��ȣ
	String product_name;// ��ǰ��
	int quantity; // ���ż���
	int total_price; // �� ����
	/* �߰��Ѱ� �Ʒ� */
	String product_color; //����
	String product_size; //������
}
