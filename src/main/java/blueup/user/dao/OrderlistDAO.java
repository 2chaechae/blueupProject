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
	
	/* �ֹ�/��� ��ü��ȸ*/
	public List<OrderlistVo> getOrderList(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderList", vo);
	}

	/* �ֹ�/��� ����ȸ*/
	public List<OrderlistVo> getOrderDetail(OrderlistVo vo) {
		return sqlSessionTemplate.selectList("orderlistDao.getOrderDetail", vo);
	}
	
	/* ��� ��ǰ �ֹ����*/
	public List<OrderlistVo> getOrderCancelAll(OrderlistVo vo) {
		return sqlSessionTemplate.selectOne("orderlistDao.getOrderCancelAll", vo);
	}
	
	/* ������ ��ǰ �ֹ����*/
	public void getOrderCancel(OrderlistVo vo) {
		sqlSessionTemplate.update("orderlistDao.getOrderCancel", vo);
	}
	
	/* �˻��� ��¥�� �ֹ�/��� ��ȸ */
	public List<OrderlistVo> getOrderListSearch(Map<String,String> map){
		return sqlSessionTemplate.selectList("orderlistDao.getSearch", map);
	}

}