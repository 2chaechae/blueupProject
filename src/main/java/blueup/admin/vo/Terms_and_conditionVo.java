package blueup.admin.vo;

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
	String terms_content; //��� ����
	Date terms_enforcement_date; // ��� ������
	Date terms_registration_date; // ��� �����
	

	
	
}
