package blueup.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.admin.vo.AdminOrderAmountVo;


@Repository
public class AdminChartDAO {

	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	/* 상품 정보 수정*/
	public List<AdminOrderAmountVo> getOrderAmount(HashMap<String, String> vo) {
		return sqlSssionTemplate.selectList("orderDao.getOrderAmount", vo);
	}
	
	public List<AdminOrderAmountVo> getOrderCount(HashMap<String, String> vo) {
		return sqlSssionTemplate.selectList("orderDao.getOrderCount", vo);
	}
}
