package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BannerVo {
	int banner_no; //��� ��ȣ
	String banner_name; 
	String banner_alt; //�̹��� ���� ������, ��ü�� ����
	String banner_image; //�̹��� ���
	String banner_original_name; //����� ���� �̸�
	String banner_type;
	String noticeurl;
}
