package blueup.admin.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class visit_statisticsVo {
	int visit_statistics_no; //방문 통계 번호
	Date visit_time; //방문 시간
}
