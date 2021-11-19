package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//일반적인 qna
public class QnaVo {
	int qna_no; // qna 번호
	String qna_type; // qna 종류
	String qna_title; // qna 제목
	String qna_content; // qna 내용
	//int qna_cnt; // qna 조회수
	Date qna_time; // qna 시간
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
