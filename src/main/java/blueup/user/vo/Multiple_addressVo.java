package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Multiple_addressVo {
	int multiple_address; // �߰� ������� ���� ������
	int user_no; // ���� ��ȣ
	String receiver; // ������
	String zipcode; // �����ȣ
	String address; // �ּ�
	String detailed_address;// �� �ּ�
	String phone1;
	String phone2;
	String phone3;
}