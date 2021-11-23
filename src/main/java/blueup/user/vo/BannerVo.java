package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BannerVo {
	int banner_no; //배너 번호
	String banner_name; 
	String banner_alt; //이미지 뜨지 않을시, 대체할 문자
	String banner_image; //이미지 경로
	String banner_original_name; //배너의 원래 이름
	String banner_type;
	String noticeurl;
}
