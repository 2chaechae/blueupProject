package blueup.admin.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LemonVo {
	int lemon_no; //�ҷ�ǰ ��ȣ
	int product_no; //��ǰ ��ȣ
	int lemon_quantity;// �ҷ�ǰ ����
	Date lemon_registration_date; //��� ����
}
