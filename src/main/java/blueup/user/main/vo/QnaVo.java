package blueup.user.main.vo;

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
	String user_id; // qna �ۼ���
	int qna_cnt; // qna ��ȸ��
	Date qna_time; // qna �ð�
	int ref;
	int step;
	int depth;
	int viewLimit; // �������׿� ����� ����
	boolean secret; //��������
	String password; //��й���
}
