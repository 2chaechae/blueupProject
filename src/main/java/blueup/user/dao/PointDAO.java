package blueup.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.PointVo;

@Repository
public class PointDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public Integer getTotalPointDao(int user_no) {
		int total_point = sqlSessionTemplate.selectOne("pointDao.getTotalPoint", user_no);
		return total_point;
	}
	
	public Integer getSavedMoneyDao(int user_no) {
		int saved_money = sqlSessionTemplate.selectOne("pointDao.getSavedMoney", user_no);
		return saved_money;
	}
	
	public Integer getCountDao(int user_no) {
		int count = sqlSessionTemplate.selectOne("pointDao.getCount", user_no);
		return count;
	}
	
	public List<PointVo> getPointListDao(Map<String, Object> map){
		List<PointVo> list = sqlSessionTemplate.selectList("pointDao.getPointList", map);
		return list;
	}
	
	public List<PointVo> getListBySearchDao(Map<String, Object> map){
		List<PointVo> list = sqlSessionTemplate.selectList("pointDao.getListBySearch", map);
		return list;
	}
	
	public int getCountBySearchDao(Map<String, Object> map) {
		int count = sqlSessionTemplate.selectOne("pointDao.getCountBySearch", map);
		return count;
	}
}