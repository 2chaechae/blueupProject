package blueup.user.main.vo;

import lombok.ToString;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString

public class PointVo {
	int point_no;
	int user_no; //ȸ�� ��ȣ
	int total_point;//��� ���� ����Ʈ
	int used_point; // ���� ����Ʈ
}
