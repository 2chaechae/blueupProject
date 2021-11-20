package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVo {
	int review_no; // 리뷰 번호
	int product_no; // 제품 번호
	String product_name; // 제품 이름
	int user_no; // 회원 번호
	String product_color; //색상
	String product_size; //사이즈
	int star; // 별점 1~5점
	String review_title;// 리뷰 타이틀
	String review_content; // 리뷰 내용
	String user_id; // 회원 아이디
	Date review_time; // 리뷰 작성 시각
	String main_image; //제품 사진
	String product_img; //상품정보 사진
	String order_status; //구매확정 
	String quantity;//구매 수량
	int review_photo_no; //리뷰 포토 번호
	
}
