package blueup.user.vo;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVo {
	int notice_no; //공지사항 번호
	String notice_type; //공지사항 종류
	String notice_title; // 공지사항 제목
	String notice_content; //공지사항 내용
	int notice_cnt; //공지사항 조회수
	Date notice_time; //공지사항 시간
}
