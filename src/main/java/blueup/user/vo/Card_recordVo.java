package blueup.user.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Card_recordVo {
	int card_record_no; //ī�� ���� ���� ��ȣ
	int order_no; //�ֹ� ��ȣ
	String card_type; //ī�� Ÿ��
	String card_no1; 
	String card_no2;
	String card_no3;
	String card_no4;
	int order_price;
	String expiration_month; //ī�� ��ȿ�Ⱓ(��)
	String expiration_year; //ī�� ��ȿ�Ⱓ(��)
	int installment_duration; //�ҺαⰣ(��)
	boolean payment_approval; //��������
	Date payment_time; //�����ð�
}
