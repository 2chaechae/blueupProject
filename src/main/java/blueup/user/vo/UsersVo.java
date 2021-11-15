package blueup.user.vo;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class UsersVo {
	int user_no; // 회원 번호
	String user_name; // 회원 이름
	String user_jumin1; //주민번호 앞자리
	String user_jumin2; // 주민번호 뒷자리
	String user_id; //회원 아이디
	String user_password; //회원 비밀번호
	String user_gender; //회원 성별
	String mobile_carrier; //통신사
	String phone1; //휴대폰 번호 앞자리
	String phone2; //휴대폰 번호 중간자리
	String phone3; //휴대폰 번호 뒷자리
	String zipcode; // 우편번호
	String address; // 주소
	String detailed_address; //상세 주소
	String email_id; //이메알 앞
	String email_address; //이메일 주소
	String member_level; //회원 등급
	Date user_registration_time; //회원 가입 일자
	boolean agree_sns; //sns 수신 여부
	boolean agree_email;//이메일 수신여부
	boolean newbie; //신규회원 여부
	int total_point;
	int perPageNum;
	int startRow;
}
