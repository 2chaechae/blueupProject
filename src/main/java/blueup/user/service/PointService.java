package blueup.user.service;

import java.util.List;
import java.util.Map;

import blueup.user.vo.PointVo;

public interface PointService {
	public Integer getToTalPointService(int user_no);
	public Integer getSavedMoneyService(int user_no);
	public Integer getCountService(int user_no);
	public List<PointVo> getPointListService(Map<String, Object> map);
	public List<PointVo> getListBySearchService(Map<String, Object> map);
	public int getCountBySearchService(Map<String, Object> map);
}