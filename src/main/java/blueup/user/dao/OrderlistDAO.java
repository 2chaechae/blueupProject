package blueup.user.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import blueup.user.vo.OrderlistVo;

@Repository
public class OrderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* 주문/배송 전체조회 */
	public List<OrderlistVo> getOrderList(int user_no) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderList", user_no);
	}

	/* 주문/배송 상세조회 */
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderDetail", vo);
	}

	/* 모든 상품 주문취소 */
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) {
		return sqlSessionTemplate.selectOne("orderlistDao.getOrderCancelAll", vo);
	}

	/* 선택한 상품 주문취소 */
	public void getOrderCancel(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderCancel", vo);
	}

	/* 구매확정 */
	public void getOrderConfirmed(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderConfirmed", vo);
	}

	/* 반품요청철회 */
	public void getWithdrawalReturn(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getWithdrawalReturn", vo);
	}

	/* 교환요청철회 */
	public void getWithdrawalExchange(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getWithdrawalExchange", vo);
	}

	/* 교환요청 */
	public void getExchangeRequest(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getExchangeRequest", vo);
	}

	/* 반품요청 */
	public void getReturnRequest(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getReturnRequest", vo);
	}
}