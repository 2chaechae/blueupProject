package blueup.user.main.vo;

import lombok.ToString;

import lombok.Getter;

import lombok.Setter;

@Setter
@Getter
@ToString

public class PointVo {
	int point_no;
	int user_no; //회원 번호
	int total_point;//사용 가능 포인트
	int used_point; // 사용된 포인트
}
