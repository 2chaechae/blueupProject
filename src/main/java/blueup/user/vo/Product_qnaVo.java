package blueup.user.vo;

import lombok.ToString;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString
public class Product_qnaVo {
	int product_qna_no; // 제품 qna 번호
	int product_no; // 제품 번호
	String product_qna_title; //qna 제목 
	boolean product_qna_secret; // 제품 qna 공개 여부
	String product_qna_type; // qna 유형
	String product_qna_content; // 제품 qna 내용
	String user_id; // 유저 아이디
	boolean qna_result; // 답변 결과
	String password_for_qna; //비밀번호
	int product_qna_ref; // 답글을 위한 ref
	int product_qna_step; // 답글을 위한 ref
	int product_qna_depth; // 공백 띄우기 위한 depth
}
