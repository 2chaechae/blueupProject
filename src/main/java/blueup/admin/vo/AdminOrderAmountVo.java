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
//�Ϲ� ��ǰ�� ���� vo��ü
public class AdminOrderAmountVo {
	int order_totalPrice;
	String day;
	int order_count;
}
