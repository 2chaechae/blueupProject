package blueup.user.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderlistVo {
	/* 주문 배송 조회 */
	String main_image; // 상품 이미지
	Date order_time; // 결제 시간 = 주문일
	int order_no; // 주문 번호
	String product_name; // 상품명
	int product_price; // 상품 가격
	String product_color; // 상품 색상
	String product_size; // 상품 사이즈
	int quantity; // 주문 수량
	String order_status; // 주문 상황
	String buyer_name; // 주문자
	String message; // 배송요청사항

	/* 주문 배송 상세조회 */
	// 1. 주문일 = order_time
	// 2. 주문번호 = order_no

	String receiver; // 수령인 = 받는분
	String address; // 주소
	// 연락처
	String phone1;
	String phone2;
	String phone3;

	// 상품명 , 상품 가격, 상품 색상, 상품 사이즈, 주문 수량, 주문 상황
	// 결제정보
	int order_price; // 주문 금액 = 총 가격
	int delivery_fee; // 배송비
	int discount_rate; // 주문 할인
	int coupon_discount; // 쿠폰 할인
	int used_point; // 사용 포인트
	String order_means; // 주문 수단
	String refund_means; // 환불 수단
	String refund_bank; // 환불 은행
	String refund_account; // 환불 계좌
	int refund_price; // 환불금액
	Date cancel_date; // 취소일자 (널 가능)
	boolean review_status; // 리뷰 작성 확인

	/* 필요없지만 혹시 몰라서 = DB Column */
	int user_no; // 회원 번호

	int order_detail_no; // 주문 디테일 번호
	int product_no; // 상품 번호
	Date payment_time; // 결제 시간
	Date delivery_start_date;// 배송시작일
	Date delivery_end_date; // 배송완료일

	int cancel_quantity; // 취소 수량

}
