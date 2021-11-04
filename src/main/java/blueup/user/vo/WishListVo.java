package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WishListVo {
	int wish_no;	// 위시리스트 번호
	int user_no;	// 회원 번호
	int product_no;	// 제품번호
	Date registration_time;// 등록 시각
}
