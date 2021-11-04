package blueup.user.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Multiple_addressVo {
	int multiple_address; // 추가 배송지에 대한 시퀀스
	int user_no; // 유저 번호
	String receiver; // 수령인
	String zipcode; // 우편번호
	String address; // 주소
	String detailed_address;// 상세 주소
	String phone1;
	String phone2;
	String phone3;
}