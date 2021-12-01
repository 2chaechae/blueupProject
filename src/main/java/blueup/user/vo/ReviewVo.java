package blueup.user.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVo {
	List<MultipartFile> reviewImage;
	int order_detail_no; //���������ϳѹ�
	int order_no; //�����ѹ�
	int review_no; // ���� ��ȣ
	int product_no; // ��ǰ ��ȣ int
	String product_name; // ��ǰ �̸�
	int user_no; // ȸ�� ��ȣ
	String product_color; //����
	String product_size; //������
	int star; // ���� 1~5��
	String review_title;// ���� Ÿ��Ʋ
	String review_content; // ���� ����
	String user_id; // ȸ�� ���̵�
	Date review_time; // ���� �ۼ� �ð�
	String main_image; //��ǰ���� ����
	String order_status; //����Ȯ�� 
	String quantity;//���� ����
	int review_photo_no; //���� ���� ��ȣ
	String photo1;
	String photo2;
	String photo3;
	String photo4;
	String photo5;
	int avgstar;
	Boolean review_status; //���� �ۼ�Ȯ�� (�ֹ�������
}
