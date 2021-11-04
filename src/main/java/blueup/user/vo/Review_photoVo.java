package blueup.user.vo;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Setter
@Getter
@ToString
public class Review_photoVo {
	int review_photo_no;	//리뷰 사진 번호 
	int review_no;		// 리뷰 번호
	String photo1;		// 사진1
	String photo2;
	String photo3;
	String photo4;
	String photo5;
}
