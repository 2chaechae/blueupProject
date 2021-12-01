package blueup.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import blueup.user.vo.OrderlistVo;

@Repository
public class AdminOrderDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* 주문/배송 전체조회 */
	public List<OrderlistVo> getOrderList(OrderlistVo orderlistvo) {
		return sqlSessionTemplate.selectList("adminorderDAO.adminorderlist", orderlistvo);
	}

	public List<OrderlistVo> getOrderProduct(OrderlistVo orderlistvo) {
		return sqlSessionTemplate.selectList("adminorderDAO.adminorderproduct", orderlistvo);
	}

	public void getDeliveryPreparing(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getDeliveryPreparing", order_detail_no);
	}

	public void getDeliveryShipping(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getDeliveryShipping", order_detail_no);
	}

	public void getDeliveryComplete(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getDeliveryComplete", order_detail_no);
	}

	public void getDeliveryDelay(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getDeliveryDelay", order_detail_no);
	}

	public void getReturnShipping(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getReturnShipping", order_detail_no);
	}

	public void getReturnComplete(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getReturnComplete", order_detail_no);
	}

	public void getExchangeCollectionShipping(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getExchangeCollectionShipping", order_detail_no);
	}

	public void getExchangeCollectionComplete(Integer order_detail_no) {
		sqlSessionTemplate.update("adminorderDAO.getExchangeCollectionComplete", order_detail_no);
	}

}
