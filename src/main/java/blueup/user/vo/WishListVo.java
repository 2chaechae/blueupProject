package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class WishListVo {
	int wish_no;	// ���ø���Ʈ ��ȣ
	int user_no;	// ȸ�� ��ȣ
	int product_no;	// ��ǰ��ȣ
	Date registration_time;// ��� �ð�
}
