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

	/* �ֹ�/��� ��ü��ȸ */
	public List<OrderlistVo> getOrderList(int user_no) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderList", user_no);
	}

	/* �ֹ�/��� ����ȸ */
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderDetail", vo);
	}

	/* ��� ��ǰ �ֹ���� */
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) {
		return sqlSessionTemplate.selectOne("orderlistDao.getOrderCancelAll", vo);
	}

	/* ������ ��ǰ �ֹ���� */
	public void getOrderCancel(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderCancel", vo);
	}

	/* ����Ȯ�� */
	public void getOrderConfirmed(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderConfirmed", vo);
	}

	/* ��ǰ��ûöȸ */
	public void getWithdrawalReturn(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getWithdrawalReturn", vo);
	}

	/* ��ȯ��ûöȸ */
	public void getWithdrawalExchange(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getWithdrawalExchange", vo);
	}

	/* ��ȯ��û */
	public void getExchangeRequest(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getExchangeRequest", vo);
	}

	/* ��ǰ��û */
	public void getReturnRequest(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getReturnRequest", vo);
	}
}