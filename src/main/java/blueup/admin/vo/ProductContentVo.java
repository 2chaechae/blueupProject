package blueup.admin.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//일반 상품에 대한 vo객체
public class ProductContentVo {
	int product_content_detail_no;		
	int product_no; 					// 상품번호
	String detailed_product_content;	// 이미지경로
	String content_type;				// 이미지위치
}
