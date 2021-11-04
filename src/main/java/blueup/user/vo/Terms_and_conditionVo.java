package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Terms_and_conditionVo {
	int terms_no; //��� ��ȣ
	String terms_title; //��� ����
	String terms_subtitle; //��� �з�
	String terms_content; //��� ����
	Date terms_enforcement_date; // ��� ������
	Date terms_registration_date; // ��� �����
	boolean terms_agree; //��� ����
	
	public String getTerms_subtitle() {
		return terms_subtitle;
	}
	public void setTerms_subtitle(String terms_subtitle) {
		this.terms_subtitle = terms_subtitle;
	}
	
	
}
