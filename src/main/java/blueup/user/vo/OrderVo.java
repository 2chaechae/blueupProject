package blueup.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVo {
	
	/* 상품정보 = product table */
	String main_image; // 상품이미지
	String product_name; // 상품이름
	int product_price; // 상품가격
	String product_color; // 상품색상
	String product_size; // 상품사이즈
	int quantity; // 상품수량
	int discount; // 할인
	int total_price; // 상품 총 가격 = 상품가격 * 수량
	int all_price; // 총 주문 가격 = 결제가격
	int delivery_fee; // 배송비
	int all_discount; // 총 할인가격
	int pay_amount; // 총 상품주문금액
	float expected_point; // 적립예상포인트

	/* 쿠폰정보 = coupon table */
	String coupon_name; // 쿠폰이름
	int coupon_discount; // 쿠폰할인가격
	String coupon_type; // 쿠폰종류 ex)멤버십쿠폰, 신규가입쿠폰
	Date coupon_begin;
	Date coupon_end;
	Date coupon_use_date; // 쿠폰사용날짜

	/* 포인트정보 = point table */
	int income; // 들어오는 포인트
	int expense; // 나가는 포인트
	String content; // 포인트를 받은 내역
	String remarks; // 비고
	Date point_date;

	/* 주문자정보 = users table */
	String user_name; // 주문하시는 분
	String email_id; // 이메일 아이디
	String email_address; // 이메일주소

	/* 배송지정보 = destination table */
	String receiver; // 받는사람
	String phone1;
	String phone2;
	String phone3;
	String zipcode;
	String address;
	String detailed_address; // 상세주소
	String request; // 배송지 요청사항 답안

	/* 쓰지 않는 DB 컬럼 */
	int product_no; // 상품 시리얼번호
	int coupon_no; // 쿠폰 시리얼번호
	int point_no; // 포인트 시리얼번호
	int user_no; // 사용자 시리얼번호
	int destination; // 배송지 시리얼번호
	int cart_no; // 장바구니 시리얼번호
}

