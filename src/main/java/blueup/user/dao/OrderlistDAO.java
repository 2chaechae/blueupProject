package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.OrderVo;

@Repository
public class OrderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSssionTemplate;
	
	public List<OrderVo> getOrderList(OrderVo vo) {
		return sqlSssionTemplate.selectList("orderlistDao.getOrderList", vo);
	}
	
	public List<OrderVo> getOrderDetail(OrderVo vo) {
		return sqlSssionTemplate.selectList("orderlistDao.getOrderDetail", vo);
	}
	
}