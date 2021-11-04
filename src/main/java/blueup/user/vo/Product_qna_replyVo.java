package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Product_qna_replyVo {
	int reply_no; // 답글 번호
	int product_qna_no; // qna 번호
	String reply_content; // 답글 내용
	int product_qna_ref; // 답글을 위한 ref
	int product_qna_step; // 답글을 위한 ref
	int product_qna_depth; // 공백 띄우기 위한 depth
}
