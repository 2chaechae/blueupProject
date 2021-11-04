package blueup.admin.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Data
public class EmpVo {
	int employee_id; //직원 아이디
	String employee_password; //직원 비밀번호
}
