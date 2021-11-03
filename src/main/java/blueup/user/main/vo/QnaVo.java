package blueup.user.main.vo;

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
	String user_id; // qna 작성자
	int qna_cnt; // qna 조회수
	Date qna_time; // qna 시간
	int ref;
	int step;
	int depth;
	int viewLimit; // 공지사항에 띄어줄 개수
	boolean secret; //공개여부
	String password; //비밀버놓
}
