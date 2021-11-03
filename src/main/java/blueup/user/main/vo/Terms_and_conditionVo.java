package blueup.user.main.vo;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Data
public class Terms_and_conditionVo {
	int terms_no; //약관 번호
	String terms_title; //약관 제목
	String terms_subtitle; //약관 분류
	String terms_content; //약관 내용
	Date terms_enforcement_date; // 약관 시행일
	Date terms_registration_date; // 약관 등록일
}
