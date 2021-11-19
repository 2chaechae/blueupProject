package blueup.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.OrderVo;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* 상품 */
	public List<OrderVo> getProduct(OrderVo vo) {
		return sqlSessionTemplate.selectList("orderDao.getProduct", vo);
	}

}
