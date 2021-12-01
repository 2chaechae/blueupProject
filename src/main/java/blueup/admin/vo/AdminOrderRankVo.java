package blueup.admin.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//일반 상품에 대한 vo객체
public class AdminOrderRankVo {
	int sale;
	String product_name;
	float ratio;
}
