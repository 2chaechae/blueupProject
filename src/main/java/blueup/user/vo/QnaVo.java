package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//�Ϲ����� qna
public class QnaVo {
	int qna_no; // qna ��ȣ
	String qna_type; // qna ����
	String qna_title; // qna ����
	String qna_content; // qna ����
	//int qna_cnt; // qna ��ȸ��
	Date qna_time; // qna �ð�
	int ref;
	int step;
	int depth;
	int user_no;
	String phone1;
	String phone2;
	String phone3;
	String email_id;
	String email_address;
	String user_name;
	String reply;
}
