package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class Qna_ReplyVo {
	int qna_reply_no; //�亯 ��ȣ
	int qna_no; // nqna ��ȣ
	String qna_reply_title; //qna ����
	String qna_reply_content; //qna ����
	String reply_writer; //qna_�ۼ���
	Date qna_reply_time; //�亭 ���ð�
	int ref;
	int depth;
	int sgtep;
	boolean secret; //���� ����
}
