package blueup.admin.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//일반 상품에 대한 vo객체
public class ProductVo {
	int product_no;		// 제품번호
	String product_name;// 제품명
	int product_price; 	// 가격
	int discount;		// 할인가격
	int delivery_fee;	// 배송비
	String product_size;// 사이즈
	String product_color;		// 색상
	boolean display_status;// 진열 상태
	Date registration_time;// 등록 시간
	String main_image;	// 대표 이미지
	String product_content;// 내용
	int discount_rate;		// 할인율
	String category_name;	//카테고리
	String detailed_category_name; //세부 카테고리
	
	String searchKeyword; //검색을 위해 넣었다.
	int wish_no; // 상품 조회시 wish list check를 위해 넣음
	int viewCount; // 조회수 
	List<MultipartFile> contentList;
	List<ProductContentVo> number;
	
}
