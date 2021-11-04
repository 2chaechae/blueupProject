package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class Qna_ReplyVo {
	int qna_reply_no; //답변 번호
	int qna_no; // nqna 번호
	String qna_reply_title; //qna 제목
	String qna_reply_content; //qna 내용
	String reply_writer; //qna_작성자
	Date qna_reply_time; //답벼 ㄴ시간
	int ref;
	int depth;
	int sgtep;
	boolean secret; //공개 여부
}
