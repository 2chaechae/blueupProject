package blueup.user.vo;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVo {
	int notice_no; //�������� ��ȣ
	String notice_type; //�������� ����
	String notice_title; // �������� ����
	String notice_content; //�������� ����
	int notice_cnt; //�������� ��ȸ��
	Date notice_time; //�������� �ð�
}
