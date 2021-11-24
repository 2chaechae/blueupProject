package blueup.admin.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVo {
	int notice_no;
	String notice_type;
	String notice_title;
	String notice_content;
	Date notice_time;
}
