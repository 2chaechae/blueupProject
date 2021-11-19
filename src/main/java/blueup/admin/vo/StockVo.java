package blueup.admin.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StockVo {
	int stock_no;
	int product_no; // ��ǰ ��ȣ
	int stock_quantity; // ���
	String product_size; // ������
	String product_color; // ����
	int unit_price; // �ܰ�
	String product_name; // ��ǰ��
	int addOrDeduct; //���� ���� Ȥ�� ����
	String category_name; // ī�װ� �̸�
	String detailed_category_name; //���� ī�װ���
	String searchKeyword; //�˻� Ű����
}
