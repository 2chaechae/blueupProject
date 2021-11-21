package blueup.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blueup.user.dao.PointDAO;
import blueup.user.vo.PointVo;

@Service("pointService")
public class PointServiceImpl implements PointService {
	
	@Autowired
	PointDAO pointDAO;
	
	@Override
	public Integer getToTalPointService(int user_no) {
		int total_point = pointDAO.getTotalPointDao(user_no);
		return total_point;
	}

	@Override
	public Integer getSavedMoneyService(int user_no) {
		int saved_money = pointDAO.getSavedMoneyDao(user_no);
		return saved_money;
	}

	@Override
	public Integer getCountService(int user_no) {
		int count = pointDAO.getCountDao(user_no);
		return count;
	}

	@Override
	public List<PointVo> getPointListService(Map<String, Object> map) {
		List<PointVo> list = pointDAO.getPointListDao(map);
		return list;
	}

	@Override
	public List<PointVo> getListBySearchService(Map<String, Object> map) {
		List<PointVo> list = pointDAO.getListBySearchDao(map);
		return list;
	}

	@Override
	public int getCountBySearchService(Map<String, Object> map) {
		int count = pointDAO.getCountBySearchDao(map);
		return count;
	}
	

}