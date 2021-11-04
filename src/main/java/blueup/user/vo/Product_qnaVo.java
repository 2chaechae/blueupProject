package blueup.user.vo;

import lombok.ToString;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString
public class Product_qnaVo {
	int product_qna_no; // ��ǰ qna ��ȣ
	int product_no; // ��ǰ ��ȣ
	String product_qna_title; //qna ���� 
	boolean product_qna_secret; // ��ǰ qna ���� ����
	String product_qna_type; // qna ����
	String product_qna_content; // ��ǰ qna ����
	String user_id; // ���� ���̵�
	boolean qna_result; // �亯 ���
	String password_for_qna; //��й�ȣ
	int product_qna_ref; // ����� ���� ref
	int product_qna_step; // ����� ���� ref
	int product_qna_depth; // ���� ���� ���� depth
}
