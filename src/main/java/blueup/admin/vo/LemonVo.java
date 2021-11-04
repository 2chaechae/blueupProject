package blueup.admin.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LemonVo {
	int lemon_no; //불량품 번호
	int product_no; //상품 번호
	int lemon_quantity;// 불량품 수량
	Date lemon_registration_date; //등록 일자
}
