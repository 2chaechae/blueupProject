package blueup.user.vo;

import lombok.ToString;

import java.util.Date;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString

public class PointVo {
	int point_no;
	int user_no; //회원 번호
	int income;//받은 포인트
	int expense; // 사용된 포인트
	String content; //내용
	String remarks; //비고
	Date point_date;//날짜
}