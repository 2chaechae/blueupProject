package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Product_qna_replyVo {
	int reply_no; // ��� ��ȣ
	int product_qna_no; // qna ��ȣ
	String reply_content; // ��� ����
	int product_qna_ref; // ����� ���� ref
	int product_qna_step; // ����� ���� ref
	int product_qna_depth; // ���� ���� ���� depth
}
