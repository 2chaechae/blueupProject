package blueup.user.vo;

import lombok.ToString;

import java.util.Date;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString

public class PointVo {
	int point_no;
	int user_no; //ȸ�� ��ȣ
	int income;//���� ����Ʈ
	int expense; // ���� ����Ʈ
	String content; //����
	String remarks; //���
	Date point_date;//��¥
}