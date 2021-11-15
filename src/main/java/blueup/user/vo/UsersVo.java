package blueup.user.vo;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class UsersVo {
	int user_no; // ȸ�� ��ȣ
	String user_name; // ȸ�� �̸�
	String user_jumin1; //�ֹι�ȣ ���ڸ�
	String user_jumin2; // �ֹι�ȣ ���ڸ�
	String user_id; //ȸ�� ���̵�
	String user_password; //ȸ�� ��й�ȣ
	String user_gender; //ȸ�� ����
	String mobile_carrier; //��Ż�
	String phone1; //�޴��� ��ȣ ���ڸ�
	String phone2; //�޴��� ��ȣ �߰��ڸ�
	String phone3; //�޴��� ��ȣ ���ڸ�
	String zipcode; // �����ȣ
	String address; // �ּ�
	String detailed_address; //�� �ּ�
	String email_id; //�̸޾� ��
	String email_address; //�̸��� �ּ�
	String member_level; //ȸ�� ���
	Date user_registration_time; //ȸ�� ���� ����
	boolean agree_sns; //sns ���� ����
	boolean agree_email;//�̸��� ���ſ���
	boolean newbie; //�ű�ȸ�� ����
	int total_point;
	int perPageNum;
	int startRow;
}
