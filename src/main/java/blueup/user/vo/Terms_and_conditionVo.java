package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Terms_and_conditionVo {
	int terms_no; //약관 번호
	String terms_title; //약관 제목
	String terms_subtitle; //약관 분류
	String terms_content; //약관 내용
	Date terms_enforcement_date; // 약관 시행일
	Date terms_registration_date; // 약관 등록일
	boolean terms_agree; //약관 동의
	
	public String getTerms_subtitle() {
		return terms_subtitle;
	}
	public void setTerms_subtitle(String terms_subtitle) {
		this.terms_subtitle = terms_subtitle;
	}
	
	
}
