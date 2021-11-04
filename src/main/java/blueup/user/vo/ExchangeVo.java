package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ExchangeVo {
	int exchange_no; // ��ȯ ��ȣ
	int user_no; // ȸ�� ��ȣ
	int order_no; // ���� ��ȣ
	int product_no; // ��ǰ ��ȣ
	String reason_for_exchange; // ��ȯ ����
	boolean reject; // ��ȯ ���� ����
	String reason_for_reject; // ��ȯ �ź� ����
	String exchange_option; // ��ȯ�� �ɼ�
}
