package blueup.admin.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//�Ϲ� ��ǰ�� ���� vo��ü
public class ProductContentVo {
	int product_content_detail_no;		
	int product_no; 					// ��ǰ��ȣ
	String detailed_product_content;	// �̹������
	String content_type;				// �̹�����ġ
}
