package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVo {
	int review_no; // ���� ��ȣ
	int product_no; // ��ǰ ��ȣ
	String product_name; // ��ǰ �̸�
	int user_no; // ȸ�� ��ȣ
	String color; //����
	String clothes_size; //������
	int star; // ���� 1~5��
	String review_title;// ���� Ÿ��Ʋ
	String review_content; // ���� ����
	String user_id; // ȸ�� ���̵�
	Date review_time; // ���� �ۼ� �ð�
}