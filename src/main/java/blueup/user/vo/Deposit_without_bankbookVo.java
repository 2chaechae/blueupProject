package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Deposit_without_bankbookVo {
	int deposit_without_bankbook_no; // ������ �Ա� ��ȣ
	int order_no; // �ֹ� ��ȣ
	String deposit_bank; // �Ա�����
	int order_price; // �Աݾ� == �ֹ� ���̺��� �ֹ� �ݾ�
	Date deadline; // ������
	boolean deposit_status; // �Աݿ���
	Date deposit_time; // �Ա� �ð�
}
