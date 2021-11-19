package blueup.user.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.OrderlistVo;

@Repository
public class OrderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/* 주문/배송 전체조회*/
	public List<OrderlistVo> getOrderList(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderList", vo);
	}

	/* 주문/배송 상세조회*/
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderDetail", vo);
	}
	
	/* 모든 상품 주문취소*/
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) {
		return sqlSessionTemplate.selectOne("orderlistDao.getOrderCancelAll", vo);
	}
	
	/* 선택한 상품 주문취소*/
	public void getOrderCancel(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderCancel", vo);
	}
	
	/* 검색된 날짜의 주문/배송 조회 */
	public List<OrderlistVo> getOrderListSearch(Map<String,String> map){
		return sqlSessionTemplate.selectList("orderlistDao.getSearch", map);
	}

}